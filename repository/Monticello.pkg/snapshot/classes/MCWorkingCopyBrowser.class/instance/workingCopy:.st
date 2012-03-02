
!MCWorkingCopyBrowser methodsFor: 'morphic ui'!
workingCopy: wc
	workingCopy _ wc.
	self changed: #workingCopyList; changed: #workingCopySelection; changed: #repositoryList.
	self changedButtons.
! !
