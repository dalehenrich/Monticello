
!MCFileRepositoryInspector methodsFor: 'morphic ui'!
versionInfo
	^ versionInfo ifNil: [versionInfo _ repository versionInfoFromFileNamed: selectedVersion]! !
