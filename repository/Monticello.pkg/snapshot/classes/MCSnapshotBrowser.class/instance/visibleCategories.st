
!MCSnapshotBrowser methodsFor: 'system category list'!
visibleCategories
	^ (self packageClasses
		collect: [:ea | ea category]) asSet asSortedCollection add: self extensionsCategory;
		 yourself! !
