
!MCWorkingCopyBrowser methodsFor: 'actions'!
checkForNewerVersions
	| newer |
	newer _ workingCopy possiblyNewerVersionsIn: self repository.
	^ newer isEmpty or: [
		self confirm: 'CAUTION!! These versions in the repository may be newer:', 
			String cr, newer asString, String cr,
			'Do you really want to save this version?'].! !
