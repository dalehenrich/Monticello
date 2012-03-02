
!MCClassDefinitionTest methodsFor: 'tests'!
testCreation
	| d |
	d :=  self mockClassA asClassDefinition.
	self assert: d className = #MCMockClassA.
	self assert: d superclassName = #MCMock.
	self assert: d type = #normal.
	self assert: d category asString = self mockCategoryName asString.
	self assert: d instVarNames asArray = #('ivar').
	self assert: d classVarNames asArray = #('CVar').
	self assert: d classInstVarNames asArray = #().
	self assert: d comment isString.
	self assert: d comment = self classAComment.
	self assert: d commentStamp = self mockClassA commentStamp! !
