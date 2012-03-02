
!MCSnapshotBrowserTest methodsFor: 'asserting'!
assertAListMatches: strings
	| listMorphs list |
	listMorphs _ self listMorphs.
	listMorphs 
		detect: [:m | list _ m getList. (list size = strings size) and: [list includesAllOf: strings]]
		ifNone: [self assert: false].! !
