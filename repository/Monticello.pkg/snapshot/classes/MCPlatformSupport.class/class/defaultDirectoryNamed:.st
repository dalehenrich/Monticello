
!MCPlatformSupport classSide methodsFor: 'io'!
defaultDirectoryNamed: aString 

	^(FileDirectory default directoryNamed: aString)
		assureExistence;
		yourself! !
