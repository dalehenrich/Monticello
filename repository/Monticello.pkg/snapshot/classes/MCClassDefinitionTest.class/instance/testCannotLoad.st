
!MCClassDefinitionTest methodsFor: 'as yet unclassified'!
testCannotLoad
	| d |
	d _  self mockClass: 'MCMockClassC' super: 'NotAnObject'.
	self should: [d load] raise: Error.
	self deny: (Smalltalk hasClassNamed: 'MCMockClassC').! !
