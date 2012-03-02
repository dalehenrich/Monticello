
!MCPlatformSupport classSide methodsFor: 'almost out of memory handling'!
installAlmostOutOfMemoryStaticHandler: commitThreshold

	| exception |
	exception := Exception
		installStaticException: [:ex :cat :num :args |
			"Exception caught, do a commit."
			System commitTransaction 
				ifFalse: [ nil error: 'AutoCommit failed' ].
			"run a markSweep"
			System _vmMarkSweep.
			(System _tempObjSpacePercentUsedLastMark < commitThreshold)
				ifTrue: [
					"We dropped below the threshold,
					 reenable the signal"
			System enableAlmostOutOfMemoryError ].
			"continue execution" ]
        	category: GemStoneError
        	number: (ErrorSymbols at: #rtErrSignalAlmostOutOfMemory).
	SessionTemps current at: #CommitOnAlmostOutOfMemoryStaticException put: exception.
	System signalAlmostOutOfMemoryThreshold: commitThreshold
! !
