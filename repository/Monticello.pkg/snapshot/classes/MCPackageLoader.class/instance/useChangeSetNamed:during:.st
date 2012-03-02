
!MCPackageLoader methodsFor: 'private'!
useChangeSetNamed: baseName during: aBlock
	"Use the named change set, or create one with the given name."
	| changeHolder oldChanges newChanges |
	changeHolder := ChangeSet.
	oldChanges := ChangeSet current.

	newChanges := ChangeSet new name: baseName .
	changeHolder newChanges: newChanges.
	[aBlock value] ensure: [changeHolder newChanges: oldChanges].! !
