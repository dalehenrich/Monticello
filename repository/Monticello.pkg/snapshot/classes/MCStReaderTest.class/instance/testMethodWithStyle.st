
!MCStReaderTest methodsFor: 'as yet unclassified'!
testMethodWithStyle
	| reader |
	reader _ MCStReader on: self methodWithStyle readStream.
	self assert: reader definitions first isMethodDefinition.! !
