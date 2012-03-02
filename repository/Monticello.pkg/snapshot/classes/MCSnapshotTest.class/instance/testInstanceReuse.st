
!MCSnapshotTest methodsFor: 'tests'!
testInstanceReuse
	| x m n y |
	x _ (MCPackage new name: self mockCategoryName) snapshot.
	Smalltalk garbageCollect.
	n _ MCDefinition allSubInstances size.
	y _ (MCPackage new name: self mockCategoryName) snapshot.
	Smalltalk garbageCollect.
	m _ MCDefinition allSubInstances size.
	self assert: m = n! !
