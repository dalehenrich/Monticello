
!MCFrontier class methodsFor: 'instance creation'!
frontierOnAll: aCollection
	| remaining  allVersions |
	remaining := Bag new.
	allVersions _ (aCollection gather: [:ea | ea withBreadthFirstAncestors]) asSet.
	allVersions do: [:ea | remaining addAll: ea ancestors].
	^self new frontier: aCollection bag: remaining! !