
!MCConflict methodsFor: 'as yet unclassified'!
source
	^ self localChosen
		ifTrue: [operation fromSource]
		ifFalse: [operation source]! !
