
!MCPlatformSupport classSide methodsFor: 'utilities'!
authorInitials
	^SessionTemps current 
		at: GsPackagePolicy current authorInitialsGlobalName 
		ifAbsent: [
			(GsSession currentSession objectNamed: #UserGlobals)
				at: #'GS_tODE_AuthorInitials'
				ifAbsent: [ GsPackagePolicy current authorInitials ]]! !
