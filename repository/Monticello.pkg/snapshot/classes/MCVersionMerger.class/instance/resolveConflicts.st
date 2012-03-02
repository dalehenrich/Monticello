
!MCVersionMerger methodsFor: 'as yet unclassified'!
resolveConflicts
	(records allSatisfy: [:ea | ea isAncestorMerge]) ifTrue: [MCNoChangesException signal. ^ false].
	^ (MCMergeResolutionRequest new merger: merger) signal = true! !
