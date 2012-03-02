
!MCVersionInspector methodsFor: 'as yet unclassified'!
changes
	(MCPatchBrowser forPatch: self version changes)
		showLabelled: 'Changes from ', self version info name! !
