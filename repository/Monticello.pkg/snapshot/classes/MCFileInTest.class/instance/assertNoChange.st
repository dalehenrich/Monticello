
!MCFileInTest methodsFor: 'asserting'!
assertNoChange
	| actual |
	actual _ MCSnapshotResource takeSnapshot.
	diff _ actual patchRelativeToBase: expected.
	self assert: diff isEmpty! !
