
!MCPackageLoader methodsFor: 'private'!
useChangeSetNamed: baseName during: aBlock
	"Use the named change set, or create one with the given name."
	| changeHolder oldChanges newChanges |
	changeHolder _ (ChangeSet respondsTo: #newChanges:)
						ifTrue: [ChangeSet]
						ifFalse: [Smalltalk].
	oldChanges _ (ChangeSet respondsTo: #current)
						ifTrue: [ChangeSet current]
						ifFalse: [Smalltalk changes].

	newChanges _ (ChangeSorter changeSetNamed: baseName) ifNil: [ ChangeSet new name: baseName ].
	changeHolder newChanges: newChanges.
	[aBlock value] ensure: [changeHolder newChanges: oldChanges].
! !
