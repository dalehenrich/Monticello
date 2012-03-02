
!MCSnapshotBrowser methodsFor: 'class list'!
allClassDefinitions
	^ (self definitions
		select: [:ea | ea isOrganizationDefinition not ]) asSet! !
