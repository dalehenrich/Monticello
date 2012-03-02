
!MCSnapshotBrowser methodsFor: 'selecting'!
methodSelection: aNumber
	methodSelection _ aNumber = 0 ifFalse: [self visibleMethods at: aNumber].
	self changed: #methodSelection; changed: #text; changed: #annotations! !
