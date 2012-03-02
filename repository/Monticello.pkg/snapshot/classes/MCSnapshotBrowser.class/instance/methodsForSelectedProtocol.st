
!MCSnapshotBrowser methodsFor: 'accessing'!
methodsForSelectedProtocol
	| methods |
	protocolSelection ifNil: [^ Array new].
	methods _ self methodsForSelectedClass asOrderedCollection.
	(protocolSelection = '-- all --') 
		ifFalse: [methods removeAllSuchThat: [:ea | ea category ~= protocolSelection]].
	^ methods 
	
								! !
