
!MCMczReader methodsFor: 'as yet unclassified'!
extractDefinitionsFrom: member
	| reader |
	(MCSnapshotReader readerClassForFileNamed: member fileName)
		ifNotNilDo: [:rc | reader _ rc on: member contentStream text.
					definitions addAll: reader definitions]! !
