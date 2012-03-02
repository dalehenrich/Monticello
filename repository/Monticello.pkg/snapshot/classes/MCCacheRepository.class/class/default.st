
!MCCacheRepository class methodsFor: 'as yet unclassified'!
default
	self checkCacheDirectory.
	^ default ifNil: [default _ self new directory: self cacheDirectory]! !
