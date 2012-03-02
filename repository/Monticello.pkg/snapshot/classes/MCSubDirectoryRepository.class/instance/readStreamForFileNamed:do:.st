
!MCSubDirectoryRepository methodsFor: 'as yet unclassified'!
readStreamForFileNamed: aString do: aBlock
	| file val |
	file _ FileStream readOnlyFileNamed: (self findFullNameForReading: aString).
	val _ aBlock value: file.
	file close.
	^ val! !
