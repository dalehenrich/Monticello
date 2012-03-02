
!MCDirectoryRepository methodsFor: 'as yet unclassified'!
isValid
	| res |
	res := GsFile _isDirectory: directory pathString onClient: self onClient.
	res == nil ifTrue: [ ^false ].
	^res! !
