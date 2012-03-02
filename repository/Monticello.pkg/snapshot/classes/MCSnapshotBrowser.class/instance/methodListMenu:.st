
!MCSnapshotBrowser methodsFor: 'menus'!
methodListMenu: aMenu 
	super methodListMenu: aMenu.
	self selectedMessageName
		ifNotNilDo: [:msgName | aMenu addLine; add: 'load method' translated action: #loadMethodSelection].
	^ aMenu! !
