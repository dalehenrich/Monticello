
!MCClassDefinitionTest methodsFor: 'tests'!
testDefinitionString
	| d |
	d := self mockClassA asClassDefinition.
	self assert: d definitionString = self mockClassA definitionST80.! !
