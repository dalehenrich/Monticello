
!MCTool methodsFor: 'morphic ui'!
showModally
	modal _ true.
	self window openInWorldExtent: (400@400).
	[self window world notNil] whileTrue: [
		self window outermostWorldMorph doOneCycle.
	].
	morph _ nil.
	^ modalValue! !
