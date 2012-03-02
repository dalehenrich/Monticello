
!MCStReaderTest methodsFor: 'as yet unclassified'!
testCommentWithStyle
	| reader |
	reader _ MCStReader on: self commentWithStyle readStream.
	reader definitions! !
