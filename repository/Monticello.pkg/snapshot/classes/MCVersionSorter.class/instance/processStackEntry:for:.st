
!MCVersionSorter methodsFor: 'private'!
processStackEntry: action for: queue

	| versionInfo |
	action == #beginAncestors
		ifTrue: [ ^self pushLayer ].
	action == #endAncestors
		ifTrue: [ ^self popLayer ].
	versionInfo := action.
	(self addToCurrentLayer: versionInfo)
		ifTrue: [
			queue addLast: #endAncestors.
			queue addAll: (self knownAncestorsOf: versionInfo) reversed.
			queue addLast: #beginAncestors	].
	^self! !
