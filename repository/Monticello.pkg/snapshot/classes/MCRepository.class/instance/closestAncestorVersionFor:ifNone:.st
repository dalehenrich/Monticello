
!MCRepository methodsFor: 'as yet unclassified'!
closestAncestorVersionFor: anAncestry ifNone: errorBlock
	anAncestry allAncestors do:
		[:ancestorInfo |
		(self versionWithInfo: ancestorInfo) ifNotNilDo: [:v | ^ v]].
	^ errorBlock value! !
