
!MCMergeBrowser methodsFor: 'as yet unclassified'!
chooseAllUnchosenRemote
	conflicts do: [ :ea | ea isResolved ifFalse: [ ea chooseRemote ] ].
	self changed: #text; changed: #list.! !
