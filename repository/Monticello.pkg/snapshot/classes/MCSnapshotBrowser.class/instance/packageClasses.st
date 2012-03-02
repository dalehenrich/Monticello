
!MCSnapshotBrowser methodsFor: 'class list'!
packageClasses
	^ self definitions
		select: [:ea | ea isClassDefinition]! !
