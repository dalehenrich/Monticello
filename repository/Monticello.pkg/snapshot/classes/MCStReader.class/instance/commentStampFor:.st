
!MCStReader methodsFor: 'as yet unclassified'!
commentStampFor: aPseudoClass
	| comment |
	comment _ aPseudoClass organization classComment.
	^  [comment stamp] on: MessageNotUnderstood do: [nil]! !
