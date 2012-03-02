
!MCSnapshotBrowser methodsFor: 'class list'!
packageClassNames
	^ self packageClasses
		collect: [:ea | ea className]! !
