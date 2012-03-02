
!MCMergeBrowser methodsFor: 'as yet unclassified'!
chooseLocal
	self conflictSelectionDo:
		[selection chooseLocal.
		self changed: #text; changed: #list]! !
