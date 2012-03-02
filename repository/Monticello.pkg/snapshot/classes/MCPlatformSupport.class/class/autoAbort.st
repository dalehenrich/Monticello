
!MCPlatformSupport classSide methodsFor: 'preferences'!
autoAbort

	^SessionTemps current at: #MCPlatform_AutoAbort otherwise: false! !
