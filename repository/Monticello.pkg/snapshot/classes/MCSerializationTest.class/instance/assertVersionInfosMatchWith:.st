
!MCSerializationTest methodsFor: 'asserting'!
assertVersionInfosMatchWith: writerClass
	| stream readerClass expected actual |
	readerClass _ writerClass readerClass.
	expected _ self mockVersion.
	stream _ RWBinaryOrTextStream on: String new.
	writerClass fileOut: expected on: stream.
	actual _ readerClass versionInfoFromStream: stream reset.
	self assert: actual = expected info.! !
