
!MCCacheRepository class methodsFor: 'as yet unclassified'!
checkCacheDirectory
	default notNil and: [default cacheDirectoryExists ifFalse: [default _ nil]]! !
