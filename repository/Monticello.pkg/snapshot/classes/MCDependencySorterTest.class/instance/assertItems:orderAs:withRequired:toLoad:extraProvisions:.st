
!MCDependencySorterTest methodsFor: 'asserting'!
assertItems: anArray orderAs: depOrder withRequired: missingDeps toLoad: unloadableItems extraProvisions: provisions
	| order sorter items missing unloadable |
	items _ anArray collect: [:ea | self itemWithSpec: ea].
	sorter _ MCDependencySorter items: items.
	sorter addExternalProvisions: provisions.
	order _ (sorter orderedItems collect: [:ea | ea name]) asArray.
	self assert: order = depOrder.
	missing _ sorter externalRequirements.
	self assert: missing asSet = missingDeps asSet.
	unloadable _ (sorter itemsWithMissingRequirements collect: [:ea | ea name]) asArray.
	self assert: unloadable asSet = unloadableItems asSet! !
