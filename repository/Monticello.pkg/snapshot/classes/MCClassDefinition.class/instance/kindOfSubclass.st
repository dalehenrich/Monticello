
!MCClassDefinition methodsFor: 'printing'!
kindOfSubclass
	| ty |
	ty := type.
	(ty isKindOf: Array) ifTrue: [ ty := ty at: 1 ].
	ty = #normal ifTrue: [^ ' subclass: '].
	ty = #transient ifTrue: [^ ' transientSubclass: '].
	ty = #words ifTrue: [^ ' variableWordSubclass: '].
	ty = #variable ifTrue: [^ ' variableSubclass: '].
	ty = #indexable ifTrue: [^ ' variableSubclass: '].
	ty = #bytes ifTrue: [^ ' variableByteSubclass: '].
	ty = #weak ifTrue: [^ ' weakSubclass: ' ].
	ty = #compiledMethod ifTrue: [^ ' variableByteSubclass: ' ].
	self error: 'Unrecognized class type: ', ty printString! !
