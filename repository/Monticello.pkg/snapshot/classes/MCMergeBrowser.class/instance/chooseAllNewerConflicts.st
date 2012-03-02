
!MCMergeBrowser methodsFor: 'as yet unclassified'!
chooseAllNewerConflicts
	conflicts do: [ :ea | ea chooseNewer ].
	self changed: #text; changed: #list.! !
