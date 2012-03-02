
!MCAncestryTest methodsFor: 'tests'!
testAllAncestors
	"- ancestors appear in the order in which they were merged in (hence e2 before a2)
	- children always come before parents (e1 before a1 and b1 before 00 at same depth; b0 before 00 even though b0 is deeper)"
	
	self assertNamesOf: self tree allAncestors are: #(e2 a2 b3 d1 e1 b2 a1 b1 b0 '00')! !
