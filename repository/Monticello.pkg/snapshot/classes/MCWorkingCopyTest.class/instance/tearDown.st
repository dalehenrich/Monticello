
!MCWorkingCopyTest methodsFor: 'running'!
tearDown
	workingCopy unregister.
	self restoreMocks.
	self clearPackageCache.
	MCPlatformSupport setAuthorInitials: savedInitials.
	super tearDown.
! !
