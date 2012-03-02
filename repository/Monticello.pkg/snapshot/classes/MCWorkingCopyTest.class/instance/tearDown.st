
!MCWorkingCopyTest methodsFor: 'running'!
tearDown
	workingCopy unregister.
	self restoreMocks.
	self clearPackageCache.
	Utilities setAuthorInitials: savedInitials.! !
