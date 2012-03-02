
!MCPatchBrowser methodsFor: 'selecting'!
selection: aNumber
	selection _ aNumber = 0 ifFalse: [self items at: aNumber].
	self changed: #selection; changed: #text; changed: #annotations! !
