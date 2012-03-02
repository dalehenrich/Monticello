
!MCWorkingCopyTest methodsFor: 'tests'!
testRepeatedMerge
	| base mother1 mother2 inst |

	base _  self snapshot.
	self change: #one toReturn: 2.
	mother1 _  self snapshot.
	self change: #two toReturn: 3.
	mother2 _  self snapshot.	
	
	self load: base.
	self change: #truth toReturn: false.
	self snapshot.

	inst _ self mockInstanceA.
	self assert: inst one = 1.
	self assert: inst two = 2.	

	self merge: mother1.
	self assert: inst one = 2.
	self assert: inst two = 2.	
	
	self change: #one toReturn: 7.
	self assert: inst one = 7.
	self assert: inst two = 2.
	
	self shouldnt: [self merge: mother2] raise: Error.
	self assert: inst one = 7.
	self assert: inst two = 3.! !
