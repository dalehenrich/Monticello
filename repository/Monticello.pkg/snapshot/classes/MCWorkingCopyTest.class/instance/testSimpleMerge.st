
!MCWorkingCopyTest methodsFor: 'tests'!
testSimpleMerge
	| mother base inst |
	inst _ self mockInstanceA.
	base _  self snapshot.
	self change: #one toReturn: 2.
	mother _  self snapshot.
	self load: base.
	self change: #two toReturn: 3.
	self snapshot.
	self assert: inst one = 1.
	self assert: inst two = 3.
	
	self merge: mother.
	self assert: inst one = 2.
	self assert: inst two = 3.! !
