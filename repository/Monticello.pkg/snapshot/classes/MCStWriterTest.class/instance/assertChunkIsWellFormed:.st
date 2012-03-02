
!MCStWriterTest methodsFor: 'asserting'!
assertChunkIsWellFormed: chunk
	Parser new
		parse: chunk readStream 
		class: UndefinedObject 
		noPattern: true
		context: nil
		notifying: nil
		ifFail: [self assert: false]! !
