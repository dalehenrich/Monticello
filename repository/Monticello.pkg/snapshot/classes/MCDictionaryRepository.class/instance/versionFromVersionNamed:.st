
!MCDictionaryRepository methodsFor: 'as yet unclassified'!
versionFromVersionNamed: aString

	self dictionary keysAndValuesDo: [:versionInfo :version | versionInfo name = aString ifTrue: [^version]].
	^nil! !
