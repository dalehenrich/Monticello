
!MCDictionaryRepository methodsFor: 'as yet unclassified'!
closestAncestorVersionFor: anAncestry ifNone: errorBlock
	| info |
	info _ anAncestry allAncestors
			detect: [:ea | self includesVersionWithInfo: ea]
			ifNone: [^ errorBlock value].
	^ self versionWithInfo: info! !
