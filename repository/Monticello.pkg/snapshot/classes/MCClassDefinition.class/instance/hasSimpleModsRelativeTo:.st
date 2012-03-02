
!MCClassDefinition methodsFor: 'comparing'!
hasSimpleModsRelativeTo: aDefinition
	"simple mods are comment or category changes"
	
	^ ((super = aDefinition)
		and: [superclassName = aDefinition superclassName and: [
				self actualClass superclass == (Smalltalk at: superclassName asSymbol)]]
		and: [type = aDefinition type])
		and: [variables = aDefinition variables]
! !
