
!MCWorkingCopyTest methodsFor: 'tests'!
testMergeIntoUnmodifiedImage
	| base revA |

	base _ self snapshot.
	self change: #a toReturn: 'a1'.
	revA _ self snapshot.
	
	self load: base.

	self merge: revA.

	self assert: (workingCopy ancestors size = 1)
	! !
