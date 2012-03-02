
!MCPlatformSupport classSide methodsFor: 'navigation'!
allImplementorsOf: aSelector 
	"Answer a SortedCollection of all the methods that implement the message 
	aSelector."
	| aCollection |
	aCollection := SortedCollection new.
	self
		allBehaviorsDo: [:behavior | (behavior includesSelector: aSelector)
				ifTrue: [aCollection
						add: (MethodReference new setStandardClass: behavior methodSymbol: aSelector)]].
	^ aCollection! !
