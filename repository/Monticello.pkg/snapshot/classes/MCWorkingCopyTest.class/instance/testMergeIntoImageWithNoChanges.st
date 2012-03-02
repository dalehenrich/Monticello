
!MCWorkingCopyTest methodsFor: 'tests'!
testMergeIntoImageWithNoChanges
	| base revB revA1 |

	self change: #a toReturn: 'a'.
	base _ self snapshot.
	self change: #b toReturn: 'b'.
	revB _ self snapshot.
	
	self load: base.
	self change: #a toReturn: 'a1'.
	revA1 _ self snapshot.

	self change: #a toReturn: 'a'.
	self snapshot.
	self merge: revB.

	self assert: (workingCopy ancestors size = 2)
	! !
