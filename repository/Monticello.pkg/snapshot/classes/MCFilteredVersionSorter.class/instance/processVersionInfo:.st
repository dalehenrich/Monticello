
!MCFilteredVersionSorter methodsFor: 'as yet unclassified'!
processVersionInfo: aVersionInfo
	| success |
	aVersionInfo = target ifTrue: [^ true].
	self pushLayer.
	success _ (self knownAncestorsOf: aVersionInfo) anySatisfy:
				[:ea | self processVersionInfo: ea].
	self popLayer.
	success ifTrue: [self addToCurrentLayer: aVersionInfo].
	^ success	! !
