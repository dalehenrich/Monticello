
!Issue257TestCase methodsFor: 'utilities'!
compile: aString selector: aSelector category: category
	| result source errorString |
	(result := self class 
		compileMethod: (source := aSelector asString , String cr , aString)
		category: category
		using: GsSession currentSession symbolList) ~~ nil 
		ifTrue: [ 
			errorString := GsMethod _sourceWithErrors: result fromString: source.
			self error: errorString ].
	^self class compiledMethodAt: aSelector! !
