
!MCWorkingCopyBrowser methodsFor: 'actions'!
openRepository
	self repository ifNotNilDo: [:repos | repos morphicOpen: workingCopy ]! !
