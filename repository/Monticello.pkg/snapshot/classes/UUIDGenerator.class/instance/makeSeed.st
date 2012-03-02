
!UUIDGenerator methodsFor: 'random seed'!
makeSeed
	| seed |
	[seed := (Time millisecondClockValue bitAnd: 16r3FFFFFFF) bitXor: self hash.
	seed := seed bitXor: (Time totalSeconds bitAnd: 16r3FFFFFFF).
	seed = 0] whileTrue: ["Try again if ever get a seed = 0"].

	^seed! !
