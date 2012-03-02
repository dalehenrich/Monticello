
!MCClassDefinition methodsFor: 'comparing'!
= aDefinition
	"see hasSimpleModsRelativeTo:, and keep it in synch"
	
	^ ((super = aDefinition)
		and: [superclassName = aDefinition superclassName]
		and: [category asString = aDefinition category asString]
		and: [type = aDefinition type])
		and: [variables = aDefinition variables]
		and: [comment = aDefinition comment]! !
