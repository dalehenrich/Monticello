
!MCVersionLoader methodsFor: 'checking'!
checkForModifications
	| modifications |
	modifications _ versions select: [:ea | ea package workingCopy modified].
	modifications isEmpty ifFalse: [self warnAboutLosingChangesTo: modifications].! !
