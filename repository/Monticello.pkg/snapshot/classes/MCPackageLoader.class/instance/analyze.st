
!MCPackageLoader methodsFor: 'private'!
analyze
	| sorter index |
	index := MCDefinitionIndex definitions: additions.
	removals removeAllSuchThat: [:removal |
		(index definitionLike: removal
			ifPresent: [:addition | obsoletions at: addition put: removal]
			ifAbsent: []) notNil].
	sorter _ self sorterForItems: additions.
	additions _ sorter orderedItems.
	requirements _ sorter externalRequirements.
	unloadableDefinitions _ sorter itemsWithMissingRequirements asSortedCollection.
	
	sorter _ self sorterForItems: removals.
	removals _ sorter orderedItems reversed.! !
