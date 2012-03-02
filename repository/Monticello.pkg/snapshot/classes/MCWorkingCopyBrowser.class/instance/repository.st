
!MCWorkingCopyBrowser methodsFor: 'actions'!
repository
	workingCopy ifNotNil: [repository _ self defaults at: workingCopy ifAbsent: []].
	^ repository! !
