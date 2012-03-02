
!MCStReaderTest methodsFor: 'as yet unclassified'!
testCommentWithoutStyle
	| reader |
	reader _ MCStReader on: self commentWithoutStyle readStream.
	self assert: (reader definitions anySatisfy: [:ea | ea isMethodDefinition]).! !
