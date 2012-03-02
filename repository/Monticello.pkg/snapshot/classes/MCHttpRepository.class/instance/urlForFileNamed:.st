
!MCHttpRepository methodsFor: 'as yet unclassified'!
urlForFileNamed: aString
	^ self locationWithTrailingSlash, aString encodeForHTTP! !
