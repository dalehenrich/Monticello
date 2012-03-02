
!MCPlatformSupport classSide methodsFor: 'io'!
readStreamForFileNamed: aString do: aBlock

	^self readStreamForFileNamed: aString onClient: FileDirectory onClient do: aBlock! !
