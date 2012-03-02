
!MCClassDefinition methodsFor: 'comparing'!
= aDefinition
	^ ((super = aDefinition)
		and: [superclassName = aDefinition superclassName]
		and: [category = aDefinition category]
		and: [type = aDefinition type])
		and: [variables = aDefinition variables]
		and: [comment = aDefinition comment]
		! !
