
!MCWorkingCopyBrowser methodsFor: 'actions'!
removeRepository
	self repository ifNotNilDo:
		[:repos |
		self repositoryGroup removeRepository: repos.
		self repositorySelection: (1 min: self repositories size)].
	self changed: #repositoryList.
	self changedButtons.
! !
