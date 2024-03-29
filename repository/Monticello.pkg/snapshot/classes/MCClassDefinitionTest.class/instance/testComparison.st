
!MCClassDefinitionTest methodsFor: 'tests'!
testComparison
	| d1 d2 d3 d4 |
	d1 _ self mockClass: 'A' super: 'X'.
	d2 _ self mockClass: 'A' super: 'Y'.
	d3 _ self mockClass: 'B' super: 'X'.
	d4 _ self mockClass: 'B' super: 'X'.
	
	self assert: (d1 isRevisionOf: d2).
	self deny: (d1 isSameRevisionAs: d2).

	self assert: (d3 isRevisionOf: d4).
	self assert: (d3 isSameRevisionAs: d4).
	
	self deny: (d1 isRevisionOf: d3).
	self deny: (d4 isRevisionOf: d2).! !
