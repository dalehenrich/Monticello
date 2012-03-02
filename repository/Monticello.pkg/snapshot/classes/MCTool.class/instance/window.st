
!MCTool methodsFor: 'morphic ui'!
window
	^ morph ifNil: [morph _ self buildWindow]! !
