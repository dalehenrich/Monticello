
!MCHttpRepository methodsFor: 'as yet unclassified'!
versionReaderForFileNamed: aString do: aBlock
	^ (self versionReaderForFileNamed: aString) ifNotNilDo: aBlock! !
