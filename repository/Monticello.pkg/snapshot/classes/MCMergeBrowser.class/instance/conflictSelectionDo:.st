
!MCMergeBrowser methodsFor: 'as yet unclassified'!
conflictSelectionDo: aBlock
	self selectionIsConflicted
		ifTrue: aBlock
		ifFalse: [self inform: 'You must have a conflict selected']! !
