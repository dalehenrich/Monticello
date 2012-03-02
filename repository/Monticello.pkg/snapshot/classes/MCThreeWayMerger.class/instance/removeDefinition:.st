
!MCThreeWayMerger methodsFor: 'as yet unclassified'!
removeDefinition: aDefinition
	index
		definitionLike: aDefinition
		ifPresent: [:other | other = aDefinition
								ifTrue: [self addOperation: (MCRemoval of: aDefinition)]
								ifFalse: [self addConflictWithOperation: (MCRemoval of: other)]]
		ifAbsent: []! !
