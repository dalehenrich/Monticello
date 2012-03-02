
!MCOrganizationDefinition methodsFor: 'as yet unclassified'!
= aDefinition
	aDefinition == nil ifTrue: [^false].
	^ (super = aDefinition)
		and: [(categories collect: [:each | each asString]) = (aDefinition categories collect: [:each | each asString])]! !
