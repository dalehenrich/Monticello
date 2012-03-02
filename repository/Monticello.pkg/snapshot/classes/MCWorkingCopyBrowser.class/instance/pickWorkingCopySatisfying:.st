
!MCWorkingCopyBrowser methodsFor: 'morphic ui'!
pickWorkingCopySatisfying: aBlock
	| copies index |
	copies _ self workingCopies select: aBlock.
	copies isEmpty ifTrue: [ ^nil ].
	index _ (PopUpMenu labelArray: (copies collect: [:ea | ea packageName]))
				startUpWithCaption: 'Package:'.
	^ index = 0 ifFalse: [ copies at: index]! !
