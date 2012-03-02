
!MCSnapshotBrowser methodsFor: 'class list'!
selectedClassDefinition
	
	| nm |
	nm := self selectedClassName.
	nm == nil ifTrue: [ ^nil ].
	^self definitions
		detect: [:ea | ea isClassDefinition and: [ea className = nm] ]
		ifNone: [ nil ]! !
