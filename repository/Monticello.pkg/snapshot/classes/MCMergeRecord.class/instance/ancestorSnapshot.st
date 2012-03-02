
!MCMergeRecord methodsFor: 'as yet unclassified'!
ancestorSnapshot
	^ ancestorSnapshot ifNil: [ancestorSnapshot _ version workingCopy findSnapshotWithVersionInfo: self ancestorInfo]! !
