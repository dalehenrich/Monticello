
!MCMethodDefinition class methodsFor: 'as yet unclassified'!
shutDown
	WeakArray removeWeakDependent: Definitions.
	Definitions _ nil.! !
