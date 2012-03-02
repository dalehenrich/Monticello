
!MCOrganizationTest methodsFor: 'as yet unclassified'!
testReorderingWithNoCategoriesInVersion
	|dec cats newCats |
	dec _ MCOrganizationDefinition categories: #().
	cats _ #(X Y B Z C A Q).
	newCats _ dec reorderCategories: cats original: #().
	self assert: newCats asArray = cats.! !
