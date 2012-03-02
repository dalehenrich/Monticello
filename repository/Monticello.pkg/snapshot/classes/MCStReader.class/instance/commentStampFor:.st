
!MCStReader methodsFor: 'as yet unclassified'!
commentStampFor: aPseudoClass
	| comment |
	comment := aPseudoClass organization classComment.
	^(comment respondsTo: #stamp)
		ifTrue: [comment stamp]
		ifFalse: [nil]
	"^  [comment stamp] on: MessageNotUnderstood do: [:ex | nil]"! !
