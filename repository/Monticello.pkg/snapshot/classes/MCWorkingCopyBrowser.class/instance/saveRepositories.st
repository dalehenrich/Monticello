
!MCWorkingCopyBrowser methodsFor: 'actions'!
saveRepositories
	| f |
	f := FileStream forceNewFileNamed: 'MCRepositories.st'.
	MCRepositoryGroup default repositoriesDo: [:r |
		f nextPutAll: 'MCRepositoryGroup default addRepository: (', r asCreationTemplate, ')!!'; cr.]! !
