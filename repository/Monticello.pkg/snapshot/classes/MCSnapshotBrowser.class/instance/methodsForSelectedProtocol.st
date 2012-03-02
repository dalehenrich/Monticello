
!MCSnapshotBrowser methodsFor: 'message list'!
methodsForSelectedProtocol
	| methods protocolSelection |
	(protocolSelection := self messageCategoryListSelection)
		ifNil: [^ Array new].
	methods := self methodsForSelectedClass asOrderedCollection.
	methods removeAllSuchThat: [:ea | ea category ~= protocolSelection].
	^ methods! !
