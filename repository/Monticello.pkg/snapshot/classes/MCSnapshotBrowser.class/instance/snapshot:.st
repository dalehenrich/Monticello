
!MCSnapshotBrowser methodsFor: 'accessing'!
snapshot: aSnapshot
	items _ aSnapshot definitions asSortedCollection.
	self categorySelection: 0.! !
