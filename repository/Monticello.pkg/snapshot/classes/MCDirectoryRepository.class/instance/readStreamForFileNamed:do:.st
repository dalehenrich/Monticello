
!MCDirectoryRepository methodsFor: 'as yet unclassified'!
readStreamForFileNamed: aString do: aBlock
	| file val |
	file _ FileStream readOnlyFileNamed: (directory fullNameFor: aString).
	val _ aBlock value: file.
	file close.
	^ val! !
