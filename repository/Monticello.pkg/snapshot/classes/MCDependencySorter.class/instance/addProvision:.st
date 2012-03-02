
!MCDependencySorter methodsFor: 'private'!
addProvision: anObject
	| newlySatisfied |
	provided add: anObject.
	newlySatisfied _ required removeKey: anObject ifAbsent: [#()].
	self addAll: newlySatisfied.! !
