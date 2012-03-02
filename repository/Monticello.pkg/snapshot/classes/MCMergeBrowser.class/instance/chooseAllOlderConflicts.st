
!MCMergeBrowser methodsFor: 'as yet unclassified'!
chooseAllOlderConflicts
	conflicts do: [ :ea | ea chooseOlder ].
	self changed: #text; changed: #list.! !
