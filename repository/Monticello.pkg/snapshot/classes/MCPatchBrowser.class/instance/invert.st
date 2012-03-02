
!MCPatchBrowser methodsFor: 'selecting'!
invert
	items _ items collect: [:ea | ea inverse].
	self changed: #list; changed: #text; changed: #selection! !
