
!MCFileBasedRepository methodsFor: 'as yet unclassified'!
canReadFileNamed: aString
	| reader |
	reader _ MCVersionReader readerClassForFileNamed: aString.
	^ reader notNil! !
