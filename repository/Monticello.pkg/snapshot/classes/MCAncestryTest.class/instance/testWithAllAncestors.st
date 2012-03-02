
!MCAncestryTest methodsFor: 'tests'!
testWithAllAncestors
	"see comments in testAllAncestors"
	
	self assertNamesOf: self tree withAllAncestors are: #(c1 e2 a2 b3 d1 e1 b2 a1 b1 b0 '00')! !
