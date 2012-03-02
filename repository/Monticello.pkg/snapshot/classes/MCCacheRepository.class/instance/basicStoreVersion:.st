
!MCCacheRepository methodsFor: 'as yet unclassified'!
basicStoreVersion: aVersion
	(self allFileNames includes: aVersion fileName)
		ifFalse: [super basicStoreVersion: aVersion]! !
