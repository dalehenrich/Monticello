
!ChangeList methodsFor: '*monticello'!
scanCategory: category class: class meta: meta stamp: stamp
	| itemPosition method |
	[itemPosition := file position.
	method := file nextChunk.
	method size > 0]						"done when double terminators"
		whileTrue:
		[self addItem: (ChangeRecord new file: file position: itemPosition type: #method
							class: class category: category meta: meta stamp: stamp)
			text: 'method: ' , class , (meta ifTrue: [' class '] ifFalse: [' '])
				, (ChangeList parseSelector: method)
				, (stamp isEmpty ifTrue: [''] ifFalse: ['; ' , stamp])]! !
