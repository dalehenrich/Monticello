
!MonticelloInfo methodsFor: 'testing'!
category: categoryName matches: prefix

	^ (super category: categoryName matches: prefix) and: [ (self ignoredCategories includes: (categoryName copyAfter: $-)) not]! !
