
!MCRepositoryTest methodsFor: 'tests'!
testAddAndLoad
	| node |
	node _ self addVersionWithSnapshot: self snapshot1 name: 'rev1'.
	self assert: (self snapshotAt: node) = self snapshot1.! !
