
!MCDictionaryRepository methodsFor: 'as yet unclassified'!
flushCache
	| count |
	count := self dictionary keys size.
	self initialize.
	^count! !
