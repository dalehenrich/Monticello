
!MCPackageLoader methodsFor: 'private'!
tryToLoad: aDefinition
	[aDefinition loadOver: (self obsoletionFor: aDefinition)] on: Error do: [errorDefinitions add: aDefinition].! !
