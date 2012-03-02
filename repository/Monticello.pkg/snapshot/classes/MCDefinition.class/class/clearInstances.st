
!MCDefinition class methodsFor: 'as yet unclassified'!
clearInstances
	WeakArray removeWeakDependent: Instances.
	Instances _ nil! !
