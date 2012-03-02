
!MCVersionSorter methodsFor: 'as yet unclassified'!
allAncestorsOf: aVersionInfo
	| all |
	all _ Set new.
	self addAllAncestorsOf: aVersionInfo to: all.
	^ all! !
