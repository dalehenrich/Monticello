
!MCWorkingCopyBrowser methodsFor: 'actions'!
clearRequiredPackages
	workingCopy ifNotNilDo:
		[:wc |
		wc clearRequiredPackages.
		self workingCopyListChanged]! !
