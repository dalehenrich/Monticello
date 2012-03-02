
!MCClassDefinition methodsFor: 'installing'!
errorLoadOver: aDefinition
	"Issue 246, avoid class migration overhead when only changing class comment or class category"

	super loadOver: aDefinition! !
