
!MCWorkingCopyBrowser methodsFor: 'morphic ui'!
workingCopyTreeMenu: aMenu
	workingCopy ifNil: [^ aMenu].
	self fillMenu: aMenu fromSpecs:
		#(('add required package' #addRequiredPackage)
			('clear required packages' #clearRequiredPackages)
			('browse package' #browseWorkingCopy)
			('view changes' #viewChanges)
			('view history' #viewHistory)
			('recompile package' #recompilePackage)
			('revert package...' #revertPackage)
			('unload package' #unloadPackage)
			('trim ancestry' #trimAncestry)
			('delete working copy' #deleteWorkingCopy)
			('inspect working copy' #inspectWorkingCopy)).
	(Smalltalk includesKey: #SARMCPackageDumper) ifTrue: [
		aMenu add: 'make SAR' target: self selector: #fileOutAsSAR
	].
	^aMenu! !
