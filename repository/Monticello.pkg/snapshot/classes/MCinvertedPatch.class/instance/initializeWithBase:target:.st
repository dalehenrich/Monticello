
!MCinvertedPatch methodsFor: 'intializing'!
initializeWithBase: baseSnapshot target: targetSnapshot
	| base target |	
	operations _ OrderedCollection new.
	base _ MCDefinitionIndex definitions: baseSnapshot definitions.
	target _ MCDefinitionIndex definitions: targetSnapshot definitions.
	
	base definitions do:
		[:t |
		target
			definitionLike: t
			ifPresent: [:b | (b isSameRevisionAs: t) ifFalse: [operations add: (MCModification of: b to: t)]]
			ifAbsent: [operations add: (MCAddition of: t)]]
		displayingProgress: 'Diffing...'.
		
	target definitions do:
		[:b |
		base
			definitionLike: b
			ifPresent: [:t |]
			ifAbsent: [operations add: (MCRemoval of: b)]]! !
