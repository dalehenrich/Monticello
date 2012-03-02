
!MCVersion methodsFor: 'enumerating'!
withAllDependenciesDo: aBlock ifUnresolved: failBlock
	| dict |
	dict _ Dictionary new.
	self allDependenciesNotIn: dict do: aBlock ifUnresolved: failBlock.
	aBlock value: self! !
