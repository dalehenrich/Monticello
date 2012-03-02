
!MCVersion methodsFor: 'enumerating'!
allDependenciesDo: aBlock ifUnresolved: failBlock
	| dict |
	dict _ Dictionary new.
	self allDependenciesNotIn: dict do: aBlock ifUnresolved: failBlock! !
