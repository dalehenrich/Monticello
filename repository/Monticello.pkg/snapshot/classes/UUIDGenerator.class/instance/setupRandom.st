
!UUIDGenerator methodsFor: 'instance creation'!
setupRandom
	randomCounter := 0.
	randomGenerator := Random new seed: self makeSeed.! !
