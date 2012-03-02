
!MCPlatformSupport classSide methodsFor: 'preferences'!
suspendAutoCommitAndMigrationDuring: aBlock

	| oldAutoCommit oldAutoMigrate |
	oldAutoCommit := self autoCommit.
	oldAutoMigrate := self autoMigrate.
	self autoCommit: false.
	self autoMigrate: false.
	aBlock ensure: [
		self autoCommit: oldAutoCommit.
		self autoMigrate: oldAutoMigrate].! !
