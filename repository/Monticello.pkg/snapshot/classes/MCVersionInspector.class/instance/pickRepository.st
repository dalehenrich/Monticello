
!MCVersionInspector methodsFor: 'morphic ui'!
pickRepository
	| index |
	index _ (PopUpMenu labelArray: (self repositories collect: [:ea | ea description]))
				startUpWithCaption: 'Repository:'.
	^ index = 0 ifFalse: [self repositories at: index]! !
