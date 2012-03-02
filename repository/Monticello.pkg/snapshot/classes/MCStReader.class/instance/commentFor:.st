
!MCStReader methodsFor: 'as yet unclassified'!
commentFor: aPseudoClass
	| comment |
	comment _ aPseudoClass organization classComment.
	^ comment asString = ''
		ifTrue: [comment]
		ifFalse: [comment string]! !
