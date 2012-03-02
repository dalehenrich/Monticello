
!MCPackageLoader methodsFor: 'private'!
provisions
	^ provisions ifNil: [provisions _ Set withAll: Smalltalk keys]! !
