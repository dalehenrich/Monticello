
!MCDirectoryRepository methodsFor: 'as yet unclassified'!
writeStreamForFileNamed: aString replace: aBoolean do: aBlock
	| file sel |
	sel _ aBoolean ifTrue: [#forceNewFileNamed:] ifFalse: [#newFileNamed:].
	file _ FileStream perform: sel with: (directory fullNameFor: aString).
	aBlock value: file.
	file close.! !
