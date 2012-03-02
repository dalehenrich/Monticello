
!MCClassDefinition methodsFor: 'serializing'!
initializeWithName: nameString
superclassName: superclassString
category: categoryString 
instVarNames: ivarArray
classVarNames: cvarArray
poolDictionaryNames: poolArray
classInstVarNames: civarArray
type: typeSymbol
comment: commentString
commentStamp: stampStringOrNil
	name _ nameString asSymbol.
	superclassName _ superclassString ifNil: ['nil'] ifNotNil: [superclassString asSymbol].
	category _ categoryString.
	name = #CompiledMethod ifTrue: [type _ #compiledMethod] ifFalse: [type _ typeSymbol].
	comment _ commentString withSqueakLineEndings.
	commentStamp _ stampStringOrNil ifNil: [self defaultCommentStamp].
	variables _ OrderedCollection  new.
	self addVariables: ivarArray ofType: MCInstanceVariableDefinition.
	self addVariables: cvarArray ofType: MCClassVariableDefinition.
	self addVariables: poolArray ofType: MCPoolImportDefinition.
	self addVariables: civarArray ofType: MCClassInstanceVariableDefinition.! !
