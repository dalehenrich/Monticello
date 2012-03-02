
!MCClassDefinition methodsFor: 'installing'!
checkForSimpleClassModificationChanges

	| cl |
	(cl := self actualClass) == nil ifTrue: [ ^false ].
	^cl asUncachedClassDefinition hasSimpleModsRelativeTo: self! !
