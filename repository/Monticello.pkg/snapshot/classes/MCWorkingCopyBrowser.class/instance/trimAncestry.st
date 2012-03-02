
!MCWorkingCopyBrowser methodsFor: 'actions'!
trimAncestry
	self pickAncestorVersionInfo ifNotNilDo:
		[:ancestor |
		workingCopy ancestry trimAfterVersionInfo: ancestor]! !
