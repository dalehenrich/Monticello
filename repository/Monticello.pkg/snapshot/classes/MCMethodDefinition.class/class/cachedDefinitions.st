
!MCMethodDefinition class methodsFor: 'as yet unclassified'!
cachedDefinitions
	Definitions ifNil: [Definitions _ MCPlatformSupport newWeakIdentityKeyDictionary.  MCPlatformSupport addWeakArrayDependent: Definitions].
	^ Definitions! !
