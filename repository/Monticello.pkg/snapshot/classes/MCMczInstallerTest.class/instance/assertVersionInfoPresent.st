
!MCMczInstallerTest methodsFor: 'as yet unclassified'!
assertVersionInfoPresent
	| dict info |
	dict _ MczInstaller versionInfo at: self mockPackage name.
	info _ expected info.
	self assertDict: dict matchesInfo: info.! !
