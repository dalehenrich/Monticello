
!MCPackageTest methodsFor: 'tests'!
testUnload
	| mock |
	self mockPackage unload.
	self deny: (Smalltalk hasClassNamed: #MCMockClassA).
	self deny: (MCSnapshotTest includesSelector: #mockClassExtension).

	mock _ (Smalltalk classNamed: #MCMock).
	self assert: (mock subclasses detect: [:c | c name = #MCMockClassA] ifNone: []) isNil! !
