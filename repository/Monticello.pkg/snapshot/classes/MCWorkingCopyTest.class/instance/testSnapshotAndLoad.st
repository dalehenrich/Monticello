
!MCWorkingCopyTest methodsFor: 'tests'!
testSnapshotAndLoad
	| base inst |
	inst _ self mockInstanceA.
	base _  self snapshot.
	self change: #one toReturn: 2.
	self assert: inst one = 2.
	self load: base.
	self assert: inst one = 1.! !
