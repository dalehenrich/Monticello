
!MCMcdWriter methodsFor: 'as yet unclassified'!
writePatch: aPatch
	| old new |
	old _ OrderedCollection new.
	new _ OrderedCollection new.
	aPatch operations do:
		[:ea |
		ea isRemoval ifTrue: [old add: ea definition].
		ea isAddition ifTrue: [new add: ea definition].
		ea isModification ifTrue: [old add: ea baseDefinition. new add: ea definition]].
	self writeOldDefinitions: old.
	self writeNewDefinitions: new.! !
