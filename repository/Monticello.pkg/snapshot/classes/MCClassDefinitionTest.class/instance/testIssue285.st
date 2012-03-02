
!MCClassDefinitionTest methodsFor: 'tests'!
testIssue285
	"based on testLoadAndUnload"
	
	| d c e x |
	d :=  self mockClass: 'MCMockClassC' super: 'Object'.
	MCPlatformSupport suspendAutoCommitAndMigrationDuring: [ d load ].
	self assert: (Smalltalk hasClassNamed: 'MCMockClassC').
	c := (Smalltalk classNamed: 'MCMockClassC').

	self assert: ((ClassOrganizer cachedOrganizer categories at: self mockCategoryName) includes: c).
	e :=  self issue285MockClass: 'MCMockClassC' super: 'Object'.
	MCPlatformSupport suspendAutoCommitAndMigrationDuring: [ e load ].

	"new class version from #load"
	self deny: ((ClassOrganizer cachedOrganizer categories at: self mockCategoryName) includes: c).
	self deny: ((x := ClassOrganizer cachedOrganizer categories at: self issue285MockCategoryName) includes: c).
	"get reference to new class version"
	c := (Smalltalk classNamed: 'MCMockClassC').
	self deny: ((ClassOrganizer cachedOrganizer categories at: self mockCategoryName) includes: c).
	self assert: ((x := ClassOrganizer cachedOrganizer categories at: self issue285MockCategoryName) includes: c).

	"test #shortcutLoad, which does not create a new class version"
	d :=  self mockClass: 'MCMockClassC' super: 'Object'.
	MCPlatformSupport suspendAutoCommitAndMigrationDuring: [ d loadOver: e ].

	MCPlatformSupport suspendAutoCommitAndMigrationDuring: [ d unload ].
	self deny: (Smalltalk hasClassNamed: 'MCMockClassC').! !
