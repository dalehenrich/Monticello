
!Class methodsFor: '*monticello'!
asClassDefinition
	^ MCClassDefinition
		name: self name
		superclassName: self superclass name
		category: self category asSymbol
		instVarNames: self instVarNames
		classVarNames: self _sortedClassVarNames
		poolDictionaryNames: self poolDictionaryNames
		classInstVarNames: self class instVarNames
		type: self typeOfClass
		comment: self classComment
		commentStamp: self commentStamp! !
