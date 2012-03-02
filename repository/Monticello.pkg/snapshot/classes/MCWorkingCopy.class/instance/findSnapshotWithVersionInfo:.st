
!MCWorkingCopy methodsFor: 'private'!
findSnapshotWithVersionInfo: aVersionInfo
	^ aVersionInfo
		ifNil: [MCSnapshot empty]
		ifNotNil: [(self repositoryGroup versionWithInfo: aVersionInfo) snapshot]! !
