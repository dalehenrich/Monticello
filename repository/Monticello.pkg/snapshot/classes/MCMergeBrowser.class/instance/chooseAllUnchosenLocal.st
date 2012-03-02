
!MCMergeBrowser methodsFor: 'as yet unclassified'!
chooseAllUnchosenLocal
	conflicts do: [ :ea | ea isResolved ifFalse: [ ea chooseLocal ] ].
	self changed: #text; changed: #list.! !
