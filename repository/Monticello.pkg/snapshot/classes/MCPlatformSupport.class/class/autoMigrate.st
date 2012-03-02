
!MCPlatformSupport classSide methodsFor: 'preferences'!
autoMigrate

	^SessionTemps current at: #MCPlatform_AutoMigrate otherwise: false! !
