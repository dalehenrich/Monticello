
!MCSnapshotBrowserTest methodsFor: 'asserting'!
denyAListHasSelection: aString
	| found |
	found _ true.
	self listMorphs 
			detect: [:m | m selection = aString]
			ifNone: [found _ false].
	self deny: found.! !
