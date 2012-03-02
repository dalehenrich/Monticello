
!MCOrganizationTest methodsFor: 'as yet unclassified'!
testReorderingWithRemovals
	|dec cats newCats |
	dec _ MCOrganizationDefinition categories: #(A B C).
	cats _ #(X Y B Z C A Q).
	newCats _ dec reorderCategories: cats original: #(Y B C A Q).
	self assert: newCats asArray = #(X A B C Z).! !
