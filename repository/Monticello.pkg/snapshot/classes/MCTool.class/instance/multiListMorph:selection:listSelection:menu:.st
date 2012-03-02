
!MCTool methodsFor: 'morphic ui'!
multiListMorph: listSymbol selection: selectionSymbol listSelection: listSelectionSymbol menu: menuSymbol
	^ PluggableListMorphOfMany
		on: self
		list: listSymbol
		primarySelection: selectionSymbol
		changePrimarySelection: (selectionSymbol, ':') asSymbol
		listSelection: listSelectionSymbol
		changeListSelection: (listSelectionSymbol, 'put:') asSymbol
		menu: menuSymbol! !
