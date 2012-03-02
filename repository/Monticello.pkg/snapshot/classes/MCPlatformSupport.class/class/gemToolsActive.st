
!MCPlatformSupport classSide methodsFor: 'smalltalk'!
gemToolsActive

   Smalltalk    at: #OBGemStonePlatform
         ifPresent: [:obGsPlatClass | ^obGsPlatClass clientForwarderMap includesKey: #debugger].
   ^ false! !
