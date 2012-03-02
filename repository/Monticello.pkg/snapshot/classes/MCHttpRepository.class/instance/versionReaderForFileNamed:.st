
!MCHttpRepository methodsFor: 'as yet unclassified'!
versionReaderForFileNamed: aString
	readerCache ifNil: [readerCache _ Dictionary new].
	^ readerCache at: aString ifAbsent:
		[self resizeCache: readerCache.
		super versionReaderForFileNamed: aString do:
			[:r |
			r ifNotNil: [readerCache at: aString put: r]]]
	! !
