
!MCCacheRepository methodsFor: 'as yet unclassified'!
cacheForPackage: aPackage
	packageCaches ifNil: [packageCaches _ Dictionary new].
	^ packageCaches at: aPackage ifAbsentPut: [MCPackageCache new]! !
