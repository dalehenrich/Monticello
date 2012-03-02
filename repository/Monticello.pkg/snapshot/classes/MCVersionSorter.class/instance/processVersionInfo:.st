
!MCVersionSorter methodsFor: 'as yet unclassified'!
processVersionInfo: aVersionInfo
	| queue |
	queue := OrderedCollection with: aVersionInfo.
	[ queue isEmpty ] whileFalse: [ self processStackEntry: queue removeLast for: queue ].! !
