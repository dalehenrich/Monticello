
!MCSnapshotTest methodsFor: 'tests'!
testInstanceReuse
	| x m n y |
"
	x := (MCPackage new name: self mockCategoryName) snapshot.
	MCPlatformSupport garbageCollect.
	n := MCDefinition allSubInstances size.
	y := (MCPackage new name: self mockCategoryName) snapshot.
	MCPlatformSupport garbageCollect.
	m := MCDefinition allSubInstances size.
	self assert: m = n
"! !
