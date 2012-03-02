
!MCSerializationTest methodsFor: 'asserting'!
assertVersionsMatchWith: writerClass
	| stream readerClass expected actual |
	readerClass _ writerClass readerClass.
	expected _ self mockVersion.
	stream _ RWBinaryOrTextStream on: String new.
	writerClass fileOut: expected on: stream.
	actual _ readerClass versionFromStream: stream reset.
	self assertVersion: actual matches: expected.! !
