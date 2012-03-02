
!MCTool methodsFor: 'morphic ui'!
showLabelled: labelString
	modal _ false.
	self label: labelString.
	^(self window)
		openInWorldExtent: self defaultExtent;
		yourself! !
