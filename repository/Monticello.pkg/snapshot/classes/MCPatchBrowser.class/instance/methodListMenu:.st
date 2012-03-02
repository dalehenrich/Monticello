
!MCPatchBrowser methodsFor: 'menus'!
methodListMenu: aMenu
	selection ifNotNil:
		[aMenu addList:#(('install'	 installSelection) -)].
	super methodListMenu: aMenu.
	^ aMenu
! !
