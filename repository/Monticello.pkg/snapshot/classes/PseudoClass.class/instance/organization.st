
!PseudoClass methodsFor: 'accessing'!
organization
	organization ifNil: [organization := PseudoClassOrganizer defaultList: SortedCollection new].

	^ organization! !
