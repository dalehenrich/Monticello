
!MCVersionInspector methodsFor: 'morphic ui'!
pickAncestor
	| index versions |
	versions _ self version info breadthFirstAncestors.
	index _ (PopUpMenu labelArray: (versions collect: [:ea | ea name]))
				startUpWithCaption: 'Ancestor:'.
	^ index = 0 ifFalse: [versions at: index]! !
