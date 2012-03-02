
!MCWorkingCopyBrowser methodsFor: 'actions'!
repository: aRepository
	repository _ aRepository.
	workingCopy ifNotNil: [self defaults at: workingCopy put: aRepository]! !
