
!MCWorkingCopyBrowser methodsFor: 'actions'!
addWorkingCopy
	|name|
	name _ FillInTheBlankMorph request: 'Name of package:'.
	name isEmptyOrNil ifFalse:
		[PackageInfo registerPackageName: name.
		workingCopy _ MCWorkingCopy forPackage: (MCPackage new name: name).
		workingCopyWrapper _ nil.
		self repositorySelection: 0].
	self workingCopyListChanged; changed: #workingCopySelection; changed: #repositoryList.
	self changedButtons.! !
