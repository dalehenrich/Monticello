
!MCOrganizationDefinition methodsFor: 'as yet unclassified'!
reorderCategories: allCategories original: oldCategories
	| first |
	first _ allCategories detect: [:ea | categories includes: ea] ifNone: [^ allCategories].
	^ 	((allCategories copyUpTo: first) copyWithoutAll: oldCategories, categories),
		categories,
		((allCategories copyAfter: first) copyWithoutAll: oldCategories, categories)! !
