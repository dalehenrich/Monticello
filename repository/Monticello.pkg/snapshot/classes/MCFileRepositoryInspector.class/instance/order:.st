
!MCFileRepositoryInspector methodsFor: 'morphic ui'!
order: anInteger
	self class order: (order _ anInteger).
	self changed: #versionList.! !
