
!MCThreeWayMerger methodsFor: 'as yet unclassified'!
addBaseSnapshot: aSnapshot
	aSnapshot definitions do:
		[:ea |
		index add: ea.
		provisions addAll: ea provisions]! !
