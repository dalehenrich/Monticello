
!MCTool methodsFor: 'morphic ui'!
buildWindow
	| window |
	window _ SystemWindow labelled: self label.
	window model: self.
	self widgetSpecs do:
		[:pair | |send fractions offsets|
		send _ pair first.
		fractions _ pair at: 2 ifAbsent: [#(0 0 1 1)].
		offsets _ pair at: 3 ifAbsent: [#(0 0 0 0)].
		window
			addMorph: (self perform: send first withArguments: send allButFirst )
			fullFrame:
				(LayoutFrame
					fractions: 
					((fractions first)@(fractions second) corner: 
						(fractions third)@(fractions fourth))
					offsets:
						((offsets first)@(offsets second)  corner:
							(offsets third)@(offsets fourth)))].
	^ window! !
