
!MCSnapshotBrowser methodsFor: 'selecting'!
protocolSelection: anInteger
	protocolSelection _ (anInteger = 0 ifFalse: [self visibleProtocols at: anInteger]).
	self methodSelection: 0.
	self changed: #protocolSelection;
		changed: #methodList;	
		changed: #annotations! !
