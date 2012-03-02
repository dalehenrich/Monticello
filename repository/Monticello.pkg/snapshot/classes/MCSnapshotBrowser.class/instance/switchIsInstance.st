
!MCSnapshotBrowser methodsFor: 'switch'!
switchIsInstance
	switch ifNil: [switch _ #instance].
	^ switch = #instance.! !
