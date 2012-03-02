
!MCMethodDefinition class methodsFor: 'as yet unclassified'!
shutDown
	MCPlatformSupport removeWeakArrayDependent: Definitions.
	Definitions _ nil.! !
