
!MCClassDefinitionTest methodsFor: 'tests'!
testLoadAndUnload
	| d c |
	d :=  self mockClass: 'MCMockClassC' super: 'Object'.
	MCPlatformSupport suspendAutoCommitAndMigrationDuring: [ d load ].
	self assert: (Smalltalk hasClassNamed: 'MCMockClassC').
	c := (Smalltalk classNamed: 'MCMockClassC').
	self assert: (c isKindOf: Class).
	self assert: c superclass = Object.
	self assert: c instVarNames isEmpty.
	self assert: c classVarNames isEmpty.
	self assert: c sharedPools isEmpty.
	self assert: c category = self mockCategoryName.
	self assert: c classComment = (self commentForClass: 'MCMockClassC').
	self assert: c commentStamp = (self commentStampForClass: 'MCMockClassC').
	MCPlatformSupport suspendAutoCommitAndMigrationDuring: [ d unload ].
	self deny: (Smalltalk hasClassNamed: 'MCMockClassC').! !
