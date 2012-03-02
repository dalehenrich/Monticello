
!MCClassDefinitionTest methodsFor: 'mocks'!
issue285MockClass: className super: superclassName
	^ MCClassDefinition
		name:  className
		superclassName:  superclassName
		category: self issue285MockCategoryName
		instVarNames: #()
		classVarNames: #()
		poolDictionaryNames: #()
		classInstVarNames: #()
		type: #normal
		comment: (self commentForClass: className)
		commentStamp: (self commentStampForClass: className)! !
