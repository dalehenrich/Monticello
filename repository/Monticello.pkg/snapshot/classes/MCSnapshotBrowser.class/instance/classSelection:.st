
!MCSnapshotBrowser methodsFor: 'selecting'!
classSelection: aNumber
	classSelection _ aNumber = 0 ifFalse: [self visibleClasses at: aNumber].
	self protocolSelection: 0.
	self changed: #classSelection; 
		changed: #protocolList;
		changed: #annotations;
		changed: #methodList.
! !