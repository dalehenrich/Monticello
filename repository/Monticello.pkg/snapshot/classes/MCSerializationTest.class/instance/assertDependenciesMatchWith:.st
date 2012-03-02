
!MCSerializationTest methodsFor: 'asserting'!
assertDependenciesMatchWith: writerClass
	| stream readerClass expected actual |
	readerClass _ writerClass readerClass.
	expected _ self mockVersionWithDependencies.
	stream _ RWBinaryOrTextStream on: String new.
	writerClass fileOut: expected on: stream.
	actual _ (readerClass on: stream reset) dependencies.
	self assert: actual = expected dependencies.! !
