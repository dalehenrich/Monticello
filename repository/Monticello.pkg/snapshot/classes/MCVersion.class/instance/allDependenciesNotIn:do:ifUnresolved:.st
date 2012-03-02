
!MCVersion methodsFor: 'enumerating'!
allDependenciesNotIn: aDictionary do: aBlock ifUnresolved: failBlock
	| version |
	self dependencies do: 
		[:ea | 
		version := aDictionary at: ea ifAbsent: [ea resolve].
		version 
			ifNil: [failBlock value: ea]
			ifNotNil: [(aDictionary includes: version) ifFalse:
						[aDictionary at: ea put: version.
						version 
							allDependenciesNotIn: aDictionary 
							do: aBlock
							ifUnresolved: failBlock.
						aBlock value: version]]]! !
