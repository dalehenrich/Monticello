
!MCVersionInfoWriter methodsFor: 'as yet unclassified'!
writeVersionInfo: aVersionInfo
	| queue |
	queue := OrderedCollection with: aVersionInfo.
	[ queue isEmpty ] whileFalse: [ self processStackEntry: queue removeLast for: queue ].! !
