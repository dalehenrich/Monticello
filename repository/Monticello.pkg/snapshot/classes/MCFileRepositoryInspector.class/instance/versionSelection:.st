
!MCFileRepositoryInspector methodsFor: 'morphic ui'!
versionSelection: aNumber
	aNumber isZero 
		ifTrue: [ selectedVersion _ version _ versionInfo _ nil ]
		ifFalse: [ 
			selectedVersion _ (self versionList at: aNumber) asString.
			version _ versionInfo _ nil].
	self changed: #versionSelection; changed: #summary; changed: #hasVersion! !
