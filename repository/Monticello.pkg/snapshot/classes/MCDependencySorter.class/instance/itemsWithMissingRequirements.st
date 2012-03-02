
!MCDependencySorter methodsFor: 'accessing'!
itemsWithMissingRequirements
	| items |
	items _ Set new.
	required do: [:ea | items addAll: ea].
	^ items
! !
