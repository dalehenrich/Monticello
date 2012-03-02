
!MCVersionHistoryBrowser methodsFor: 'accessing'!
selection: aNumber
	index _ aNumber.
	self changed: #selection; changed: #summary! !
