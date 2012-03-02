
!MCWorkingCopyBrowser methodsFor: 'actions'!
newRepository
	| types index |
	types _ MCRepository allConcreteSubclasses asArray.
	index _ (PopUpMenu labelArray: (types collect: [:ea | ea description]))
				startUpWithCaption: 'Repository type:'.
	^ index = 0 ifFalse: [(types at: index) morphicConfigure]! !
