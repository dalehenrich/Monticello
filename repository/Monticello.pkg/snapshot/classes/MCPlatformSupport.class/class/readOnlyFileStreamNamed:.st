
!MCPlatformSupport classSide methodsFor: 'io'!
readOnlyFileStreamNamed: fileName

	^self readStreamForFileNamed: fileName onClient: FileDirectory onClient do: [:stream | ^stream ]
! !
