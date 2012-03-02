
!MCMethodDefinitionTest methodsFor: 'running'!
tearDown
	self restoreMocks.
	(MCWorkingCopy forPackage: (MCPackage named: 'FooBarBaz')) unregister.
	self class compile: 'override ^ 1' classified: 'mocks'.
	self ownPackage modified: isModified! !
