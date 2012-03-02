
!MCDependencySorter class methodsFor: 'as yet unclassified'!
sortItems: aCollection
	| sorter |
	sorter _ self items: aCollection.
	sorter externalRequirements do: [:req  | sorter addProvision: req].
	^ sorter orderedItems.! !
