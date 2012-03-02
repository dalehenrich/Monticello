
!Class methodsFor: '*monticello'!
classComment

	| comment |
	description == nil ifTrue: [ ^'' ].
	comment := description detailsAboutClass.
	comment == nil ifTrue: [ ^'' ].
	^comment! !
