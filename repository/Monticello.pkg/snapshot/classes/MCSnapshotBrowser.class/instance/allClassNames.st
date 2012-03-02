
!MCSnapshotBrowser methodsFor: 'class list'!
allClassNames
	^ ((self definitions
		select: [:ea | ea isOrganizationDefinition not ]) collect: [:ea | ea className]) asSet! !
