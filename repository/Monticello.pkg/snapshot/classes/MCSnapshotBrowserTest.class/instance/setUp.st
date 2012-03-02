
!MCSnapshotBrowserTest methodsFor: 'running'!
setUp
	model _ MCSnapshotBrowser forSnapshot: MCSnapshotResource current snapshot.
	morph _ model buildWindow.! !
