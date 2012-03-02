
!MCVersion methodsFor: 'initialize-release'!
initializeWithPackage: aPackage info: aVersionInfo snapshot: aSnapshot dependencies: aCollection
	package _ aPackage.
	info _ aVersionInfo.
	snapshot _ aSnapshot.
	dependencies _ aCollection.
	self addToCache.! !
