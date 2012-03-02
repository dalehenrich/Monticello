
!MCMergeBrowser methodsFor: 'as yet unclassified'!
getMenu: aMenu
	selection ifNil: [^ aMenu].
	^ self selectionIsConflicted
		ifTrue: [self getConflictMenu: aMenu]
		ifFalse: [self getOperationMenu: aMenu]! !
