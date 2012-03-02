
!MCPackage methodsFor: 'as yet unclassified'!
printOn: aStream
	super printOn: aStream.
	aStream
		nextPut: $(;
		nextPutAll: name;
		nextPut: $)! !
