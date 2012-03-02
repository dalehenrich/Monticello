
!MCMethodDefinition methodsFor: 'accessing'!
load
	MCPlatformSupport
		compile: self actualClass
		source: source
		classified: category
		withStamp: timeStamp! !
