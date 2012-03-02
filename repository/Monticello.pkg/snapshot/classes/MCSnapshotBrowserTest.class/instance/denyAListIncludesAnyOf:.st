
!MCSnapshotBrowserTest methodsFor: 'asserting'!
denyAListIncludesAnyOf: anArrayOfStrings
	| found |
	found _ true.
	self listMorphs 
			detect: [:m | m getList includesAnyOf: anArrayOfStrings]
			ifNone: [found _ false].
	self deny: found.! !
