
!MCFileInTest methodsFor: 'running'!
setUp
	super setUp.
	expected _ self mockSnapshot.
	stream _ RWBinaryOrTextStream on: String new.! !
