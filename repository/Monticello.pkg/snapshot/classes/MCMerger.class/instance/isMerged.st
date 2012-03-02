
!MCMerger methodsFor: 'as yet unclassified'!
isMerged
	^ self conflicts allSatisfy: [:ea | ea isResolved]! !
