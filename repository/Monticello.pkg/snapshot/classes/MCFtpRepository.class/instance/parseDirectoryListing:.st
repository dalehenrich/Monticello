
!MCFtpRepository methodsFor: 'as yet unclassified'!
parseDirectoryListing: aString
	| stream files line tokens |
	stream _ aString readStream.
	files _ OrderedCollection new.
	[stream atEnd] whileFalse:
		[line _ stream nextLine.
		tokens _ line findTokens: ' '.
		tokens size > 2 ifTrue: [files add: tokens last]].
	^ files! !
