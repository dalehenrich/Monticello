
!MCStWriterTest methodsFor: 'testing'!
setUp
	stream _ RWBinaryOrTextStream on: String new.
	writer _ MCStWriter on: stream.
! !
