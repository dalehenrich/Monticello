
!MCSerializationTest methodsFor: 'testing'!
testMcdSerialization
	| stream expected actual |
	expected _ self mockDiffyVersion.
	stream _ RWBinaryOrTextStream on: String new.
	MCMcdWriter fileOut: expected on: stream.
	actual _ MCMcdReader versionFromStream: stream reset.
	self assertVersion: actual matches: expected.! !
