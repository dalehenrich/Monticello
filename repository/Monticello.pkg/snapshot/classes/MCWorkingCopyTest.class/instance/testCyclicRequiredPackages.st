
!MCWorkingCopyTest methodsFor: 'tests'!
testCyclicRequiredPackages

	| pkg1 pkg2 |
	pkg1 := MCPackage named: 'XX_AAA'.
	pkg2 := MCPackage named: 'XX_BBB'.
	[pkg1 workingCopy requiredPackages add: pkg2.
	pkg2 workingCopy requiredPackages add: pkg1.
	self deny: pkg1 workingCopy needsSaving.
	self deny: pkg2 workingCopy needsSaving]
		ensure: [
			pkg1 unload.
			pkg2 unload].! !
