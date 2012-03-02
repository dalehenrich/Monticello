
!PseudoClass methodsFor: '*monticello'!
addMethodChange: aChangeRecord
	| selector |
	selector := ChangeList parseSelector: aChangeRecord string.
	self organization classify: selector under: aChangeRecord category.
	self sourceCodeAt: selector put: aChangeRecord! !
