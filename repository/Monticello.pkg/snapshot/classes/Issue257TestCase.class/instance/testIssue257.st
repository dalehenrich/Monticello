
!Issue257TestCase methodsFor: 'tests'!
testIssue257

	self class package coreCategoriesForClass: self class.
	self compile: '^1' selector: #foo category: self methodCategory.
	self class package coreCategoriesForClass: self class.
	self compile: '^1' selector: #foo category: ''.
	self class package coreCategoriesForClass: self class.
! !
