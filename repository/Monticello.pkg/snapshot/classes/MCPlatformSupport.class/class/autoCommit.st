
!MCPlatformSupport classSide methodsFor: 'preferences'!
autoCommit

	^SessionTemps current at: #MCPlatform_AutoCommit otherwise: false! !
