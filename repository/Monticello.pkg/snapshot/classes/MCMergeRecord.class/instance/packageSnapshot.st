
!MCMergeRecord methodsFor: 'as yet unclassified'!
packageSnapshot
	^ packageSnapshot ifNil: [packageSnapshot _ version package snapshot]! !
