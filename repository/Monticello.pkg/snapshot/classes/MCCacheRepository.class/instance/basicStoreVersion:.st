
!MCCacheRepository methodsFor: 'as yet unclassified'!
basicStoreVersion: aVersion
	(aVersion isCacheable and: [self allFileNames includes: aVersion fileName])
		ifFalse: [super basicStoreVersion: aVersion]
! !
