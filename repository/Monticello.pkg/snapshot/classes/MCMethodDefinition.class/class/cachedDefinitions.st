
!MCMethodDefinition class methodsFor: 'as yet unclassified'!
cachedDefinitions
	Definitions ifNil: [Definitions _ WeakIdentityKeyDictionary new.  WeakArray addWeakDependent: Definitions].
	^ Definitions! !
