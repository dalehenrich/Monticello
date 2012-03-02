
!MCVersion methodsFor: 'actions'!
browse
	(MCSnapshotBrowser forSnapshot: self snapshot)
		showLabelled: 'Snapshot of ', self fileName! !
