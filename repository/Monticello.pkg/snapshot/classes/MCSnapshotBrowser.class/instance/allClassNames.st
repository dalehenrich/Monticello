
!MCSnapshotBrowser methodsFor: 'accessing'!
allClassNames
	^ (items 
		select: [:ea | ea isOrganizationDefinition not] 
		thenCollect: [:ea | ea className]) asSet.
! !
