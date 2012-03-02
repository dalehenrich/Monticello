
!MCHttpRepository methodsFor: 'required'!
readStreamForFileNamed: aString do: aBlock 
	^ MCPlatformSupport
		readStreamForUrl: (self urlForFileNamed: aString)
		user: user
		passwd: password
		do: aBlock! !
