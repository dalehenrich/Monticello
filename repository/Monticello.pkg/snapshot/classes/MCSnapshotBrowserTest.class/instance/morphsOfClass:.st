
!MCSnapshotBrowserTest methodsFor: 'morphic'!
morphsOfClass: aMorphClass
	| morphs |
	morphs _ OrderedCollection new.
	morph allMorphsDo: [:m | (m isKindOf: aMorphClass) ifTrue: [morphs add: m]].
	^ morphs! !
