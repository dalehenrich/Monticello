
!MCMcdReader methodsFor: 'as yet unclassified'!
loadPatch
	| old new |
	definitions := OrderedCollection new.
	(self zip membersMatching: 'old/*')
		do: [:m | self extractDefinitionsFrom: m].
	old := definitions asArray.
	definitions := OrderedCollection new.
	(self zip membersMatching: 'new/*')
		do: [:m | self extractDefinitionsFrom: m].
	new := definitions asArray.
	^ patch := self buildPatchFrom: old to: new.! !
