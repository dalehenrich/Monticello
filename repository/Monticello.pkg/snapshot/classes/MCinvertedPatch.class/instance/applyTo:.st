
!MCinvertedPatch methodsFor: 'applying'!
applyTo: anObject
	operations do: [:ea | ea applyInverseTo: anObject].! !
