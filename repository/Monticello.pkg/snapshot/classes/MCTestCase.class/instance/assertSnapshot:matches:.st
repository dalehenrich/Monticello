
!MCTestCase methodsFor: 'asserting'!
assertSnapshot: actual matches: expected
	| diff |
	diff _ actual patchRelativeToBase: expected.
	self assert: diff isEmpty! !
