
!MCWorkingAncestry methodsFor: 'as yet unclassified'!
addAncestor: aNode
	ancestors _ (self ancestors reject: [:each | aNode hasAncestor: each])
		copyWith: aNode! !
