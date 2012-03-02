
!MCMergeRecord methodsFor: 'as yet unclassified'!
mergePatch
	^ mergePatch ifNil: [mergePatch _ version snapshot patchRelativeToBase: self ancestorSnapshot]! !
