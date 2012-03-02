
!MCMergeBrowser class methodsFor: 'as yet unclassified'!
resolveConflictsInMerger: aMerger
	| inst |
	inst _ self new merger: aMerger.
	^ inst showModally ifNil: [false]! !
