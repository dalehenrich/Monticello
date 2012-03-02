
!MCMczInstallerTest methodsFor: 'as yet unclassified'!
assertNoChange
	| actual |
	actual _ MCSnapshotResource takeSnapshot.
	diff _ actual patchRelativeToBase: expected snapshot.
	self assert: diff isEmpty! !
