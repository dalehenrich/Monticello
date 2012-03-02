
!MCClassDefinition methodsFor: 'installing'!
load
	 self createClass ifNotNilDo:
		[:class |
		class class instanceVariableNames: self classInstanceVariablesString.
		self hasComment ifTrue: [class classComment: comment stamp: commentStamp]]! !
