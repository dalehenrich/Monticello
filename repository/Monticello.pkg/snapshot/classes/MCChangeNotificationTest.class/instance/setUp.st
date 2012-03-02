
!MCChangeNotificationTest methodsFor: 'running'!
setUp
	super setUp.
	workingCopy := MCWorkingCopy forPackage: (MCPackage named: 'Monticello-Mocks').
	workingCopy modified: false.! !
