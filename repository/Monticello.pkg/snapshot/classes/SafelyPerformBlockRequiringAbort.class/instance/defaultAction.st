
!SafelyPerformBlockRequiringAbort methodsFor: 'ANSI - signalledException'!
defaultAction
	"Technically an abort is required, but to preserve changes to persistent state, do a commit.
	 If an abort is desired, then you need to handle this Notification explicitly."
	
	self block == nil ifTrue: [ ^nil ].
	self block value: System commitTransaction
! !
