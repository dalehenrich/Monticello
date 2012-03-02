
!MCPackage methodsFor: 'as yet unclassified'!
storeOn: aStream
	aStream
		nextPutAll: 'MCPackage';
		space; nextPutAll: 'named: '; store: name.! !
