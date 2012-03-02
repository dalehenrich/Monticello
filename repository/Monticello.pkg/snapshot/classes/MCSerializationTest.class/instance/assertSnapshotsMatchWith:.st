
!MCSerializationTest methodsFor: 'asserting'!
assertSnapshotsMatchWith: writerClass
	| readerClass expected stream actual |
	readerClass _ writerClass readerClass.
	expected _ self mockSnapshot.
	stream _ RWBinaryOrTextStream on: String new.
	(writerClass on: stream) writeSnapshot: expected.
	actual _ readerClass snapshotFromStream: stream reset.
	self assertSnapshot: actual matches: expected.! !
