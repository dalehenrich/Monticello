
!MCPlatformSupport classSide methodsFor: 'transients'!
transientGlobalNamed: aKey

^self transientGlobals at: aKey ifAbsent: [^nil]! !
