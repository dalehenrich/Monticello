
!MCStWriter methodsFor: 'writing'!
writeClassDefinition: definition
	self chunkContents: [:s | definition printDefinitionOn: stream]! !