
!MCMethodDefinition methodsFor: 'comparing'!
= aDefinition
	aDefinition == nil ifTrue: [^false].
	^(super = aDefinition)
		and: [aDefinition source = self source]
		and: [aDefinition category = self category]
		and: [aDefinition timeStamp = self timeStamp]! !
