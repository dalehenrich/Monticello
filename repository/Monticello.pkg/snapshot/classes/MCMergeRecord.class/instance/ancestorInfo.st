
!MCMergeRecord methodsFor: 'as yet unclassified'!
ancestorInfo
	^ ancestorInfo ifNil: [ancestorInfo _ version info commonAncestorWith: version workingCopy ancestry]! !
