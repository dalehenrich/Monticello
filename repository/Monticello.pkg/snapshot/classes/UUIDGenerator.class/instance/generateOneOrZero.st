
!UUIDGenerator methodsFor: 'generator'!
generateOneOrZero
	| result |
	self semaphoreForGenerator
		critical: [| value | 
			value := self randomGenerator next.
			self randomCounter: self randomCounter + 1.
			self randomCounter > 100000
				ifTrue: [self setupRandom].
			result := value < 0.5
						ifTrue: [0]
						ifFalse: [1]].
	^ result! !
