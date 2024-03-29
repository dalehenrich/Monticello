
!UUIDGenerator methodsFor: 'generator'!
generateRandomBitsOfLength: aNumberOfBits
| target |
	target := 0.
	aNumberOfBits == 0 ifTrue: [^target].
	target := self generateOneOrZero.
	(aNumberOfBits - 1)  timesRepeat:
		[target := (target bitShift: 1)  bitOr: self generateOneOrZero].
	^target! !
