
!MCFileBasedRepository methodsFor: 'as yet unclassified'!
cacheAllFileNamesDuring: aBlock
	allFileNames _ self allFileNames.
	^ aBlock ensure: [allFileNames _ nil]! !
