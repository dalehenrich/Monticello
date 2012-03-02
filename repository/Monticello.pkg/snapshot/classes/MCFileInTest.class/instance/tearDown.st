
!MCFileInTest methodsFor: 'running'!
tearDown
	(diff isNil or: [diff isEmpty not])
		 ifTrue: [
			MCPlatformSupport suspendAutoCommitAndMigrationDuring: [ 
				expected updatePackage: self mockPackage ]].
	super tearDown.
! !
