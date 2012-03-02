
!MCWorkingCopyBrowser methodsFor: 'actions'!
recompilePackage
	workingCopy package packageInfo methods
		do: [:ea | ea actualClass recompile: ea methodSymbol]
		displayingProgress: 'Recompiling...'! !
