
!PseudoClassOrganizer methodsFor: 'accessing'!
setDefaultList: aSortedCollection

	categoryArray := Array with: Default.
	categoryStops := Array with: aSortedCollection size.
	elementArray := aSortedCollection asArray.
	self classComment: nil.! !
