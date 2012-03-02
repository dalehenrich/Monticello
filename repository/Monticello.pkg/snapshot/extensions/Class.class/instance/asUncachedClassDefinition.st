
!Class methodsFor: '*monticello'!
asUncachedClassDefinition
	"Create a MCClassDefinition, but avoid using the definition cache"
	^ MCClassDefinition new
		initializeWithName: self name
		superclassName: self superclass name
		category: self category asSymbol
		instVarNames: self instVarNames
		classVarNames: self _sortedClassVarNames
		poolDictionaryNames: self poolDictionaryNames
		classInstVarNames: self class instVarNames
		type: self typeOfClass
		comment: self classComment
		commentStamp: self commentStamp! !
