
!MCWorkingCopyBrowser methodsFor: 'actions'!
addRepositoryToWorkingCopy
	workingCopy ifNotNilDo:
		[:wc |
			workingCopy repositoryGroup addRepository: self repository.
			self
				changed: #workingCopySelection;
				changed: #repositoryList;
				changed: #repositorySelection.
			self changedButtons]! !
