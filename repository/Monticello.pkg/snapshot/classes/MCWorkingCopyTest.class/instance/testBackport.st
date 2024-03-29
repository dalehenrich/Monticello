
!MCWorkingCopyTest methodsFor: 'tests'!
testBackport
	| inst base final backported |
	inst _ self mockInstanceA.
	base _  self snapshot.
	self assert: inst one = 1.
	self change: #one toReturn: 2.
	self change: #two toReturn: 3.
	final _ self snapshot.
	[workingCopy backportChangesTo: base info]
		on: MCChangeSelectionRequest
		do: [:e | e resume: e patch].
	self assert: inst one = 2.
	self assert: inst two = 3.
	self assert: workingCopy ancestry ancestors size = 1.
	self assert: workingCopy ancestry ancestors first = base info.
	self assert: workingCopy ancestry stepChildren size = 1.
	self assert: workingCopy ancestry stepChildren first = final info.
	backported _ self snapshot.
	[workingCopy backportChangesTo: base info]
		on: MCChangeSelectionRequest
		do: [:e | e resume: e patch].
	self assert: workingCopy ancestry ancestors size = 1.
	self assert: workingCopy ancestry ancestors first = base info.
	self assert: workingCopy ancestry stepChildren size = 1.
	self assert: workingCopy ancestry stepChildren first = backported info.! !
