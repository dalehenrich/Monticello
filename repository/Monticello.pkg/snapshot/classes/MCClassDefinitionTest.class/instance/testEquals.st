
!MCClassDefinitionTest methodsFor: 'as yet unclassified'!
testEquals
	| a b |
	a _ self mockClass: 'ClassA' super: 'SuperA'.
	b _ self mockClass: 'ClassA' super: 'SuperA'.
	self assert: a = b! !
