
!MCWorkingCopy methodsFor: 'repositories'!
repositoryGroup
	^ repositoryGroup ifNil: [repositoryGroup _ MCRepositoryGroup new]! !
