
!MCPlatformSupport classSide methodsFor: 'navigation'!
allBehaviors 
	"Evaluate the argument, aBlock, for each kind of Behavior in the system 
	(that is, Object and its subclasses)."

    | ar |
    ar := Array new.
	self allBehaviorsDo: [:behavior | ar add: behavior ].
    ^ar! !
