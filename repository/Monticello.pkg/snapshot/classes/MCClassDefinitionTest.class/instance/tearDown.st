
!MCClassDefinitionTest methodsFor: 'tests'!
tearDown
	Smalltalk at: 'MCMockClassC' ifPresent: [:c | c removeFromSystem].
	super tearDown.
! !
