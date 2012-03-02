
!MCStWriterTest methodsFor: 'asserting'!
assertMethodChunkIsWellFormed: chunk
	Parser new
		parse: chunk readStream 
		class: UndefinedObject 
		noPattern: false
		context: nil
		notifying: nil
		ifFail: [self assert: false]! !
