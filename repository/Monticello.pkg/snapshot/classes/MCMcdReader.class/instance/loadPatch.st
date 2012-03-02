
!MCMcdReader methodsFor: 'as yet unclassified'!
loadPatch
	| old new |
	(self zip memberNamed: 'patch.bin') ifNotNilDo:
		[:m | [^ patch _ (DataStream on: m contentStream) next ]
			on: Error do: [:fallThrough ]].
	definitions _ OrderedCollection new.
	(self zip membersMatching: 'old/*')
		do: [:m | self extractDefinitionsFrom: m].
	old _ definitions asArray.
	definitions _ OrderedCollection new.
	(self zip membersMatching: 'new/*')
		do: [:m | self extractDefinitionsFrom: m].
	new _ definitions asArray.
	^ patch _ self buildPatchFrom: old to: new.
	! !
