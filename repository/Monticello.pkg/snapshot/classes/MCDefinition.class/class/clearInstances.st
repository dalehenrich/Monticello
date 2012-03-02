
!MCDefinition class methodsFor: 'as yet unclassified'!
clearInstances
	MCPlatformSupport removeWeakArrayDependent: Instances.
	Instances _ nil! !
