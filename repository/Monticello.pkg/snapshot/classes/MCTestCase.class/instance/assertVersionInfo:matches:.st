
!MCTestCase methodsFor: 'asserting'!
assertVersionInfo: actual matches: expected
	self assert: (actual name sameAs: expected name).
	self assert: actual message = expected message.
	self assert: actual ancestors size = expected ancestors size.
	actual ancestors with: expected ancestors do: [:a :e | self assertVersionInfo: a matches: e]! !
