
!MCDependencySorter methodsFor: 'building'!
add: anItem
	| requirements |
	requirements _ self unresolvedRequirementsFor: anItem.
	requirements isEmpty
		ifTrue: [self addToOrder: anItem]
		ifFalse: [self addRequirements: requirements for: anItem]! !
