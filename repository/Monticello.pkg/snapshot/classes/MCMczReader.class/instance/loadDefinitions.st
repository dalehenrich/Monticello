
!MCMczReader methodsFor: 'as yet unclassified'!
loadDefinitions
	definitions := OrderedCollection new.
	(self zip memberNamed: 'snapshot.bin') ifNotNilDo:
		[:m | [^ definitions := (DataStream on: m contentStream) next definitions]
				on: Error do: [:fallThrough | ]].
	"otherwise"
	(self zip membersMatching: 'snapshot/*')
		do: [:m | self extractDefinitionsFrom: m].! !
