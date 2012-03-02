
!MCMczInstallerTest methodsFor: 'as yet unclassified'!
setUp
	super setUp.
	expected _ self mockVersion.
	self change: #one toReturn: 2.! !
