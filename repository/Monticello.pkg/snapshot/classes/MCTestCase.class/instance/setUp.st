
!MCTestCase methodsFor: 'running'!
setUp

	saveAutoMigrate := MCPlatformSupport autoMigrate.
	monticelloPackageModified := self monticelloPackage modified.! !
