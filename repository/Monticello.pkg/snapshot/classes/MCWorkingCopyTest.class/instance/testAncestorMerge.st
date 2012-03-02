
!MCWorkingCopyTest methodsFor: 'tests'!
testAncestorMerge
	| base revA revB revC |

	base _ self snapshot.
	self change: #a toReturn: 'a1'.
	revA _  self snapshot.
	self change: #b toReturn: 'b1'.
	revB _  self snapshot.	
	self change: #c toReturn: 'c1'.
	revC _  self snapshot.	

	self should: [self basicMerge: revA] raise: MCNoChangesException.
	! !
