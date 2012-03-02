
!MCWorkingCopy methodsFor: 'private'!
uniqueVersionName
	|versionName|
	counter _ nil.
	[versionName _ self nextVersionName.
	self repositoryGroup includesVersionNamed: versionName] whileTrue.
	^ versionName! !
