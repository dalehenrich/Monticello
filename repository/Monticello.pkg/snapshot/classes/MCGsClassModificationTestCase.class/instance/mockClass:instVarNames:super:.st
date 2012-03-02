
!MCGsClassModificationTestCase methodsFor: 'mocks'!
mockClass: className instVarNames: instVarNames super: superclassName
	^ MCClassDefinition
		name:  className
		superclassName:  superclassName
		category: self mockCategoryName
		instVarNames: instVarNames
		classVarNames: #()
		poolDictionaryNames: #()
		classInstVarNames: #()
		type: #normal
		comment: 'This is a comment'
		commentStamp: 'tester-dkh 1/1/2000 00:00'! !
