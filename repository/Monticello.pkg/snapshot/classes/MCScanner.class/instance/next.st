
!MCScanner methodsFor: 'as yet unclassified'!
next
  "non-recursive variant of next, to avoid stack overflow conditions in Gemstone"
	| c stack token |
	stack := Array new.
	[stream atEnd] 
		whileFalse: [
			stream skipSeparators.
			c := stream peek.
			c = $# ifTrue: [c := stream next; peek].
			c = $' 
				ifTrue: [token := self nextString]
				ifFalse: [
					c = $( 
						ifTrue: [	
							stream next. "("
							stack addLast: (WriteStream on: Array new).
						]
						ifFalse: [
							c =$)
								ifTrue: [
									stream next. ")"
									token := stack last contents.
									stack removeLast .
								]
								ifFalse: [
									c isAlphaNumeric 
										ifTrue: [token := self nextSymbol]
										ifFalse: [ self error: 'Unknown token type' ].
								].
						]
				].
			stack isEmpty 
				ifTrue: [ ^token ]
				ifFalse: [ token ~~ nil ifTrue: [ stack last nextPut: token ]].
			token := nil.
		].
	stack size > 1 ifTrue: [self error: 'Unclosed array'].
	^stack last contents! !
