
!MCStWriterTest methodsFor: 'testing'!
setUp
	super setUp.
	stream _ RWBinaryOrTextStream on: String new.
	writer _ MCStWriter on: stream.! !
