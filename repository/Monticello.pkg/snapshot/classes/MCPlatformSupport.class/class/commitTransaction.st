
!MCPlatformSupport classSide methodsFor: 'transactions'!
commitTransaction
	"XXXX this is here because of use of allInstances ... which we should avoid"
	System commitTransaction ifFalse: [ self error: 'Attempt to commit transaction failed' ].! !
