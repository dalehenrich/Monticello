
!MCCacheRepository methodsFor: 'as yet unclassified'!
seenFileNames
	^ seenFiles ifNil: [seenFiles _ OrderedCollection new]! !
