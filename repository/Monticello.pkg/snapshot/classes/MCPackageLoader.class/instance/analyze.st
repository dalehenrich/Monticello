
!MCPackageLoader methodsFor: 'private'!
analyze
	| sorter |
	sorter _ self sorterForItems: additions.
	additions _ sorter orderedItems.
	requirements _ sorter externalRequirements.
	unloadableDefinitions _ sorter itemsWithMissingRequirements asSortedCollection.
	
	sorter _ self sorterForItems: removals.
	removals _ sorter orderedItems reversed.! !
