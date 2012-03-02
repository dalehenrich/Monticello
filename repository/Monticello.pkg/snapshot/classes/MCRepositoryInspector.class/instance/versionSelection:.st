
!MCRepositoryInspector methodsFor: 'morphic ui'!
versionSelection: aNumber
	aNumber isZero 
		ifTrue: [ selectedVersion _ nil ]
		ifFalse: [ 
			selectedVersion _ versions at: aNumber].
	self changed: #versionSelection; changed: #summary! !
