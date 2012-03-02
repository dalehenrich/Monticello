
!MCPlatformSupport classSide methodsFor: 'almost out of memory handling'!
almostOutOfMemoryStaticHandlerInstalled

	SessionTemps current at: #CommitOnAlmostOutOfMemoryStaticException ifAbsent: [ ^false ].
	^true! !
