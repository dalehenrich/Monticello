
!MCSnapshotBrowserTest methodsFor: 'simulating'!
clickOnListItem: aString
	| listMorph |
	listMorph _ self findListContaining: aString.
	listMorph changeModelSelection: (listMorph getList indexOf: aString).! !
