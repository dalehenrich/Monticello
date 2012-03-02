
!MCSnapshotBrowser methodsFor: 'listing'!
visibleProtocols
	| methods protocols |
	self switchIsComment ifTrue: [^ Array new].
	methods _ self methodsForSelectedClass.
	protocols _ (methods collect: [:ea | ea category]) asSet asSortedCollection.
	(protocols size > 1) ifTrue: [protocols add: '-- all --'].
	^ protocols ! !
