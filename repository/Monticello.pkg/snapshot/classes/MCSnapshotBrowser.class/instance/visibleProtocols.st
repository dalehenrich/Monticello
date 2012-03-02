
!MCSnapshotBrowser methodsFor: 'message category list'!
visibleProtocols
	| methods protocols |
	self classCommentIndicated
		ifTrue: [^ Array new].
	methods := self methodsForSelectedClass.
	protocols := (methods
				collect: [:ea | ea category]) asSet asSortedCollection.
	^ protocols! !
