
!MCWorkingCopyBrowser methodsFor: 'morphic ui'!
pickAncestorVersionInfo
	| ancestors index |
	ancestors _ workingCopy ancestry breadthFirstAncestors.
	index _ (PopUpMenu labelArray: (ancestors collect: [:ea | ea name]))
				startUpWithCaption: 'Ancestor:'.
	^ index = 0 ifFalse: [ ancestors at: index]! !
