
!MCThreeWayMerger methodsFor: 'as yet unclassified'!
applyTo: anObject
	super applyTo: anObject.
	self operations do: [:ea | ea applyTo: anObject]! !
