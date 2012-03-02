
!MCFileInTest methodsFor: 'running'!
setUp
	expected _ self mockSnapshot.
	stream _ RWBinaryOrTextStream on: String new.! !
