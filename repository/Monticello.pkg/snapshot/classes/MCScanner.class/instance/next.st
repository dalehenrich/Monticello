
!MCScanner methodsFor: 'as yet unclassified'!
next
	| c |
	stream skipSeparators.
	c _ stream peek.
	c = $# ifTrue: [c _ stream next; peek].
	c = $' ifTrue: [^ self nextString].
	c = $( ifTrue: [^ self nextArray].
	c isAlphaNumeric ifTrue: [^ self nextSymbol].
	self error: 'Unknown token type'.	! !
