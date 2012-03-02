
!Issue257TestCase methodsFor: 'running'!
tearDown
	{ self methodCategory. #'' } do: [:cat |
		(self class organization listAtCategoryNamed: cat)
			do: [ :each | self class removeSelector: each ifAbsent: []].
		(self class categoryNames includes: cat)
			ifTrue: [self class removeCategory: cat ]].! !
