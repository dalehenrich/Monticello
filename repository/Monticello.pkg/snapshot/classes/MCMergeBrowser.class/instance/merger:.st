
!MCMergeBrowser methodsFor: 'as yet unclassified'!
merger: aMerger
	merger _ aMerger.
	items _ aMerger operations asSortedCollection.
	conflicts _ aMerger conflicts.! !
