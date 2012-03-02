
!MCMethodDefinitionTest methodsFor: 'running'!
tearDown
	self restoreMocks.
	(MCWorkingCopy forPackage: (MCPackage named: 'Monticellomocks')) unregister.
	(MCWorkingCopy forPackage: (MCPackage named: 'Foobarbaz')) unregister.
	super tearDown.
! !
