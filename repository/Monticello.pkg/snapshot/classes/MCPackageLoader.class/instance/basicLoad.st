
!MCPackageLoader methodsFor: 'private'!
basicLoad
	errorDefinitions _ OrderedCollection new.
	[[additions do: [:ea | self tryToLoad: ea] displayingProgress: 'Loading...'.
	removals do: [:ea | ea unload] displayingProgress: 'Cleaning up...'.
	self shouldWarnAboutErrors ifTrue: [self warnAboutErrors].
	errorDefinitions do: [:ea | ea loadOver: (self obsoletionFor: ea)] displayingProgress: 'Reloading...'.
	additions do: [:ea | ea postloadOver: (self obsoletionFor: ea)] displayingProgress: 'Initializing...']
		on: InMidstOfFileinNotification 
		do: [:n | n resume: true]]
			ensure: [self flushChangesFile]! !
