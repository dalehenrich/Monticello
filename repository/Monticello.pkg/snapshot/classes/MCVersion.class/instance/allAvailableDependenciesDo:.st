
!MCVersion methodsFor: 'enumerating'!
allAvailableDependenciesDo: aBlock
	| version |
	self dependencies do:
		[:ea |
		[version _ ea resolve.
		version allAvailableDependenciesDo: aBlock.
		aBlock value: version]
			on: Error do: []]! !
