
!MCStWriterTest methodsFor: 'testing'!
testClassMethodDefinition
	writer visitMethodDefinition: (MethodReference class: self mockClassA class selector: #one) 									asMethodDefinition.
	self assertContentsOf: stream match: self expectedClassMethodDefinition.
	stream reset.
	self assert: stream nextChunk isAllSeparators.
	self assertChunkIsWellFormed: stream nextChunk.
	self assertMethodChunkIsWellFormed: stream nextChunk.
	self assert: stream nextChunk isAllSeparators ! !
