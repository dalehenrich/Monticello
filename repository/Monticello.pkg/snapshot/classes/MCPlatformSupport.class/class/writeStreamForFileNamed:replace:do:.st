
!MCPlatformSupport classSide methodsFor: 'io'!
writeStreamForFileNamed: aString replace: aBoolean do: aBlock

	^self writeStreamForFileNamed: aString onClient: FileDirectory onClient replace: aBoolean do: aBlock! !
