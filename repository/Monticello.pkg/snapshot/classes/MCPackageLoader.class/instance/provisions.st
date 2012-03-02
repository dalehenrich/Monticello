
!MCPackageLoader methodsFor: 'private'!
provisions
	^ provisions ifNil: [provisions _ MCPlatformSupport smalltalkKeys]! !
