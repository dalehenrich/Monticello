
!MCRepositoryTest methodsFor: 'tests'!
testStoreAndLoad
	| node node2 |
	node _ self saveSnapshot1.
	node2 _ self saveSnapshot2.
	self assert: (self snapshotAt: node) = self snapshot1.
	self assert: (self snapshotAt: node2) = self snapshot2.! !
