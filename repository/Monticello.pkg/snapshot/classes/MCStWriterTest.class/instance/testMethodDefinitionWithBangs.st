
!MCStWriterTest methodsFor: 'testing'!
testMethodDefinitionWithBangs
	writer visitMethodDefinition: (MethodReference 
									class: self class 
									selector: #methodWithBangs) asMethodDefinition.
	self assertContentsOf: stream match: self expectedMethodDefinitionWithBangs.
	stream reset.
	self assert: stream nextChunk isAllSeparators.
	self assertChunkIsWellFormed: stream nextChunk.
	self assertMethodChunkIsWellFormed: stream nextChunk.
	self assert: stream nextChunk isAllSeparators ! !
