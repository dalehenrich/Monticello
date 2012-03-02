
!MCConflict methodsFor: 'as yet unclassified'!
status
	^ self isResolved
		ifFalse: ['']
		ifTrue: [self remoteChosen
					ifFalse: ['L']
					ifTrue: ['R']]! !
