
!MCInitializationTest methodsFor: 'as yet unclassified'!
testWorkingCopy
	MczInstaller storeVersionInfo: self mockVersion.
	MCWorkingCopy initialize.
	MCWorkingCopy allManagers
						detect: [:man | man package name = self mockPackage name]
						ifNone: [self assert: false]! !
