
!MCVersionHistoryBrowser methodsFor: 'accessing'!
infos
	^ infos ifNil: [infos _ ancestry withBreadthFirstAncestors]! !
