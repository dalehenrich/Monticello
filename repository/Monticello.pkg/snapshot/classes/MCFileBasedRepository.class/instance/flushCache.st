
!MCFileBasedRepository methodsFor: 'as yet unclassified'!
flushCache
	| count |
	cache == nil ifTrue: [ ^0 ].
	count := cache keys size.
	cache _ nil.
	^count! !
