
!ChangeList class methodsFor: 'parsing'!
parseSelector: methodString
	"
	ChangeList parseSelector: 'test'.
	ChangeList parseSelector: 'test2'.
	ChangeList parseSelector: 'test: arg1'.
	ChangeList parseSelector: 'test: arg1 test: arg2'.
	ChangeList parseSelector: 'test
		x := 1
		^x'.
	ChangeList parseSelector: 'test: arg1
		| x |
		x := 1
		^x'.
	ChangeList parseSelector: 'test: arg1 test: arg2
		<primitive: 617 >
		^nil'.
	ChangeList parseSelector: 'test: arg1 test: arg2
		""test""
		<primitive: 617 >
		^nil'.
	ChangeList parseSelector: 'debit: aCreditCard from: anAmount
        
'
	"

	| str token selector c done |
	str := ReadStream on: methodString.
	token := WriteStream on: String new.
	selector := WriteStream on: String new.
	done := false.
	[ done ] whileFalse: [
		str skipSeparators.
		str atEnd ifTrue: [ c := nil ] ifFalse: [ c := str next ].
		[c notNil _and: [c isAlphaNumeric _or: [ c == $_]]] 
			whileTrue: [ 
				token nextPut: c. 
				str atEnd 
					ifTrue: [ c := nil ]
					ifFalse: [ c := str next].
			].
		c == $:
			ifTrue: [
				token nextPut: c.
				str atEnd not
					ifTrue: [
						str skipSeparators.
						"skip arg"
						c := str next.
						[c notNil _and: [c isLetter _or: [ c == $_]]] whileTrue: [ 
							str atEnd
								ifTrue: [ c := nil ]
								ifFalse: [ c := str next ]
						].
					].
			]
			ifFalse: [
				done := true.
			].
			selector nextPutAll: token contents.
			token reset.
			str atEnd ifTrue: [ done := true ].
		].
	^selector contents! !
