
!MCOrganizationTest methodsFor: 'as yet unclassified'!
testReordering
	|dec cats newCats |
	dec _ MCOrganizationDefinition categories: #(A B C).
	cats _ #(X Y B Z C A Q).
	newCats _ dec reorderCategories: cats original: #(B C A).
	self assert: newCats asArray = #(X Y A B C Z Q).! !
