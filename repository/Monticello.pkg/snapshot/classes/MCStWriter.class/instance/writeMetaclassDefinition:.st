
!MCStWriter methodsFor: 'writing'!
writeMetaclassDefinition: definition
	self chunkContents: [:s | s
		nextPutAll: definition className;
		nextPutAll: ' class';
		cr; tab;
		nextPutAll: 'instanceVariableNames: ''';
		nextPutAll: definition classInstanceVariablesString;
		nextPut: $'.
	]! !
