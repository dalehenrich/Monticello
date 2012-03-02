
!MCConflict methodsFor: 'as yet unclassified'!
isRemoteNewer
	^ self localDefinition fullTimeStamp < self remoteDefinition fullTimeStamp! !
