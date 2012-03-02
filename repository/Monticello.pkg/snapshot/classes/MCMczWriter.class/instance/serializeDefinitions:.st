
!MCMczWriter methodsFor: 'serializing'!
serializeDefinitions: aCollection
	| writer s |
	s _ RWBinaryOrTextStream on: String new.
	writer _ self snapshotWriterClass on: s.
	writer writeDefinitions: aCollection.
	^ s contents! !
