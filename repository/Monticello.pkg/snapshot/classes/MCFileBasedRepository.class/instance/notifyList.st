
!MCFileBasedRepository methodsFor: 'as yet unclassified'!
notifyList
	| list |
	(self allFileNames includes: 'notify') ifFalse: [^ #()].
	^ self readStreamForFileNamed: 'notify' 
		onClient: self onClient 
		do: [:s |
			s upToEnd withSqueakLineEndings findTokens: (String with: Character cr)]! !
