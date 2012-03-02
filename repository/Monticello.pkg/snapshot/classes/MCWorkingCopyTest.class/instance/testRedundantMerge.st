
!MCWorkingCopyTest methodsFor: 'tests'!
testRedundantMerge
	| base |
	base _  self snapshot.
	self merge: base.
	self shouldnt: [self merge: base] raise: Error.! !
