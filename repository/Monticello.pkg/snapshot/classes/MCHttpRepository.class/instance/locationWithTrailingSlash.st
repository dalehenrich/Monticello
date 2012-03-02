
!MCHttpRepository methodsFor: 'as yet unclassified'!
locationWithTrailingSlash
	^ (location endsWith: '/')
		ifTrue: [location]
		ifFalse: [location, '/']! !
