
!MCWorkingCopyBrowser methodsFor: 'actions'!
browseWorkingCopy
	workingCopy ifNotNil:
		[(MCSnapshotBrowser forSnapshot: workingCopy package snapshot)
			label: 'Snapshot Browser: ', workingCopy packageName;
			show]! !
