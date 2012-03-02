
!MCPlatformSupport classSide methodsFor: 'almost out of memory handling'!
commitOnAlmostOutOfMemoryDuring: aBlock

	self almostOutOfMemoryStaticHandlerInstalled
		ifTrue: [ ^aBlock value ].
	[
		self installAlmostOutOfMemoryStaticHandler: 75.
		aBlock value ]
			ensure: [ self uninstallAlmostOutOfMemoryStaticHandler ]! !
