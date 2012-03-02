
!MCStReader methodsFor: 'as yet unclassified'!
classDefinitionFrom: aPseudoClass
	| tokens |
	tokens _ Scanner new scanTokens: aPseudoClass definition.
	tokens size = 11 ifFalse: [self error: 'Unrecognized class definition'].
	^ MCClassDefinition
		name: (tokens at: 3)
		superclassName: (tokens at: 1)
		category: (tokens at: 11)
		instVarNames: ((tokens at: 5) findTokens: ' ')
		classVarNames: ((tokens at: 7) findTokens: ' ')
		poolDictionaryNames: ((tokens at: 9) findTokens: ' ')
		classInstVarNames: (self classInstVarNamesFor: aPseudoClass)
		type: (self typeOfSubclass: (tokens at: 2))
		comment: (self commentFor: aPseudoClass)
		commentStamp: (self commentStampFor: aPseudoClass)! !
