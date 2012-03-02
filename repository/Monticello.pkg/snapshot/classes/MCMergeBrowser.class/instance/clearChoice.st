
!MCMergeBrowser methodsFor: 'as yet unclassified'!
clearChoice
	self conflictSelectionDo:
		[selection clearChoice.
		self changed: #text; changed: #list]! !
