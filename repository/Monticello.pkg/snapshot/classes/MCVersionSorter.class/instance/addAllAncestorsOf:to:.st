
!MCVersionSorter methodsFor: 'as yet unclassified'!
addAllAncestorsOf: aVersionInfo to: aSet
	| queue |
	(aSet includes: aVersionInfo) ifTrue: [^ self].
	aSet add: aVersionInfo.
	queue := OrderedCollection with: aVersionInfo.
	[queue isEmpty] whileFalse: [ | vi |
		vi := queue removeFirst.
		(self knownAncestorsOf: vi) do: [:ea | 
			(aSet includes: ea) 
				ifFalse: [
					aSet add: ea.
					queue addLast: ea]]].! !
