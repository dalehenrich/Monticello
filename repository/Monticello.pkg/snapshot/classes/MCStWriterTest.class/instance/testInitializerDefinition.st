
!MCStWriterTest methodsFor: 'testing'!
testInitializerDefinition
	|chunk lastChunk|
	writer writeSnapshot: self mockSnapshot.
	stream reset.
	[stream atEnd] whileFalse:
		[chunk _ stream nextChunk.
		chunk isAllSeparators ifFalse: [lastChunk _ chunk]].
	self assertContentsOf: lastChunk readStream match: self expectedInitializerA! !
