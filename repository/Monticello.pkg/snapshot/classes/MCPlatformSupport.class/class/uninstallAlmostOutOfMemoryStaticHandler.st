
!MCPlatformSupport classSide methodsFor: 'almost out of memory handling'!
uninstallAlmostOutOfMemoryStaticHandler

	System signalAlmostOutOfMemoryThreshold: -1.
	Exception removeStaticException: (SessionTemps current at: #CommitOnAlmostOutOfMemoryStaticException).
	SessionTemps current removeKey: #CommitOnAlmostOutOfMemoryStaticException.! !
