
!MCThreeWayMerger methodsFor: 'as yet unclassified'!
addDefinition: aDefinition
	index
		definitionLike: aDefinition
		ifPresent: [:other | other = aDefinition
								ifFalse: [self addConflictWithOperation: (MCModification of: other to: aDefinition)]]
		ifAbsent: [self addOperation: (MCAddition of: aDefinition)]! !
