
!MCPackageLoader methodsFor: 'private'!
shouldWarnAboutErrors
	^ errorDefinitions isEmpty not and: [true "should make this a preference"]! !
