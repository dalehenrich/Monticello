
!MCPackageLoader methodsFor: 'private'!
basicLoad
	| duplicateInstanceVarDefs duplicates repairs repairErrorStream |
	errorDefinitions _ OrderedCollection new.
	duplicateInstanceVarDefs := Dictionary new.
	repairs := OrderedCollection new.
	repairErrorStream := WriteStream on: String new.
	[[additions do: [:ea | 
		duplicates := self tryToLoad: ea.
		duplicates ~~ nil ifTrue: [ duplicateInstanceVarDefs at: (duplicates at: 1) put: duplicates ].
	] displayingProgress: 'Loading...'.
	removals do: [:ea | ea unload] displayingProgress: 'Cleaning up...'.
	self shouldWarnAboutErrors ifTrue: [self warnAboutErrors].
	errorDefinitions do: [:ea | 
		[[ ea errorLoadOver: (self obsoletionFor: ea) ] 
			on: MessageNotUnderstood 
			do: [:ex | 
				"avoid problems when loading Issue 246 bugfix"
				ea loadOver: (self obsoletionFor: ea)]]
			on: Error
			do: [:ex | "fix for Issue 247"
				ex gsNumber = (ErrorSymbols at: #rtErrAddDupInstvar)
					ifTrue: [ | ar superclass |
						ar := nil.
						superclass := Smalltalk at: ea superclassName asSymbol ifAbsent: [ ex pass ].
						[ ar == nil ] whileTrue: [
							(ar := duplicateInstanceVarDefs at: superclass name asString ifAbsent: []) == nil
								ifTrue: [ 
									(superclass := superclass superclass) == nil ifTrue: [ ex pass ]]].
						repairs 
							add: (ar at: 2);
							addAll: (ar at: 3);
							yourself.
						repairErrorStream cr; nextPutAll: ex description; cr.
						ex return: nil ].
				ex pass]
	] displayingProgress: 'Reloading...'.

	repairs do: [:ea | "fix for Issue 247"
		[ ea errorLoadOver: (self obsoletionFor: ea) ] 
			on: MessageNotUnderstood 
			do: [:ex | 
				"avoid problems when loading Issue 246 bugfix"
				ea loadOver: (self obsoletionFor: ea)]
	] displayingProgress: 'Repairing...'.
	repairs notEmpty 
		ifTrue: [ ^self error: 'Duplicate instance variables encountered: ', repairErrorStream contents ].

	additions do: [:ea | ea postloadOver: (self obsoletionFor: ea)] displayingProgress: 'Initializing...']
		on: InMidstOfFileinNotification 
		do: [:n | n resume: true]]
			ensure: [self flushChangesFile]! !
