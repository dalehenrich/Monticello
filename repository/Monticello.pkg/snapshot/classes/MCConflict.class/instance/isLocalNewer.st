
!MCConflict methodsFor: 'as yet unclassified'!
isLocalNewer
	^ self localDefinition fullTimeStamp > self remoteDefinition fullTimeStamp! !
