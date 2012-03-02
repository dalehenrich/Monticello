
!MCVersionReader class methodsFor: 'reading'!
file: fileName streamDo: aBlock
	| file |
	^ 	[file _ MCPlatformSupport readOnlyFileStreamNamed: fileName.
		aBlock value: file]
			ensure: [file close]! !
