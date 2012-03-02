
!MCWorkingCopyTest methodsFor: 'tests'!
testOptimizedLoad
	| inst base diffy |
	inst _ self mockInstanceA.
	base _ self snapshot.
	self change: #one toReturn: 2.
	self assert: inst one = 2.
	diffy _ self snapshot asDiffAgainst: base.
	self deny: diffy canOptimizeLoading.
	self load: base.
	self assert: inst one = 1.
	self assert: diffy canOptimizeLoading.
	self load: diffy.
	self assert: inst one = 2.
! !
