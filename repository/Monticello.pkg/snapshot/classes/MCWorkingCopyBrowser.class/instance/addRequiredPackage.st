
!MCWorkingCopyBrowser methodsFor: 'actions'!
addRequiredPackage
	workingCopy ifNotNilDo:
		[:wc |
		self pickWorkingCopy ifNotNilDo:
			[:required |
			wc requirePackage: required package.
			self workingCopyListChanged]]! !
