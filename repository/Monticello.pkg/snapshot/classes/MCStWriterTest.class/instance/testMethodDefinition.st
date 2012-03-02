
!MCStWriterTest methodsFor: 'testing'!
testMethodDefinition
	writer visitMethodDefinition: (MethodReference class: self mockClassA selector: #one) 									asMethodDefinition.
	self assertContentsOf: stream match: self expectedMethodDefinition.
	stream reset.
	self assert: stream nextChunk isAllSeparators.
	self assertChunkIsWellFormed: stream nextChunk.
	self assertMethodChunkIsWellFormed: stream nextChunk.
	self assert: stream nextChunk isAllSeparators! !
