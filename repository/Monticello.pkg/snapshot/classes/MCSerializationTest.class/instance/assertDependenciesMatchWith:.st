
!MCSerializationTest methodsFor: 'asserting'!
assertDependenciesMatchWith: writerClass
	| stream readerClass expected actual |
	readerClass := writerClass readerClass.
	expected := self mockVersionWithDependencies.
	stream := RWBinaryOrTextStream on: String new.
	writerClass fileOut: expected on: stream.
	actual := readerClass on: stream reset.
	self assert: actual dependencies = expected dependencies.! !
