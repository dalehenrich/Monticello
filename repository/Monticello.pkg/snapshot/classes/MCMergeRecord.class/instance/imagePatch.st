
!MCMergeRecord methodsFor: 'as yet unclassified'!
imagePatch
	^ imagePatch ifNil: [imagePatch _ self packageSnapshot patchRelativeToBase: self ancestorSnapshot]! !
