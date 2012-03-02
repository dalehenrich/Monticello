
!MCClassDefinition methodsFor: 'installing'!
loadOver: aDefinition
	"Issue 246, avoid class migration overhead when only changing class comment or class category"

	self checkForSimpleClassModificationChanges
		ifTrue: [ self shortcutLoad ]
		ifFalse: [ super loadOver: aDefinition ]! !
