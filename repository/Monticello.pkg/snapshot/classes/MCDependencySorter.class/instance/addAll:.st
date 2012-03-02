
!MCDependencySorter methodsFor: 'building'!
addAll: aCollection
	(aCollection asArray sortWithBlock: [:a:b | a <= b ]) do: [:ea | self add: ea]! !
