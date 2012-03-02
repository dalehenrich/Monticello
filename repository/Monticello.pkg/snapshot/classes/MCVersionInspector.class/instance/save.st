
!MCVersionInspector methodsFor: 'as yet unclassified'!
save
	self pickRepository ifNotNilDo:
		[:ea |
		ea storeVersion: self version]! !
