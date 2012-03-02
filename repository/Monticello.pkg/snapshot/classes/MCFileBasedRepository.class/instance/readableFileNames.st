
!MCFileBasedRepository methodsFor: 'as yet unclassified'!
readableFileNames
	^ self allFileNames select: [:ea | self canReadFileNamed: ea]! !
