
!MCHttpRepository methodsFor: 'required'!
allFileNames
	MCPlatformSupport
		readStreamForUrl: (self locationWithTrailingSlash, '?C=M;O=D')
		user: self user
		passwd: self password
		do: [:str | ^self parseFileNamesFromStream: str].
	self error: 'Could not access ', location
! !
