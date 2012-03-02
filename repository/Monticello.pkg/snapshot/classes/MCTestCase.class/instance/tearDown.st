
!MCTestCase methodsFor: 'running'!
tearDown

	MCPlatformSupport autoMigrate: saveAutoMigrate.
	self monticelloPackage modified: monticelloPackageModified.
	MCPlatformSupport autoCommit 
		ifTrue: [ System commitTransaction ifFalse: [ self error: 'Commit during MCTest run failed' ]]! !
