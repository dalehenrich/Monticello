
!PseudoClass methodsFor: '*monticello'!
asClassDefinition
	^ MCClassDefinition
		name: self name
		superclassName: self superclass name
		category: self category 
		instVarNames: self instVarNames
		classVarNames: self _sortedClassVarNames
		poolDictionaryNames: self poolDictionaryNames
		classInstVarNames: self class instVarNames
		type: self typeOfClass
		comment: self organization classComment	 asString
		commentStamp: self organization commentStamp! !
