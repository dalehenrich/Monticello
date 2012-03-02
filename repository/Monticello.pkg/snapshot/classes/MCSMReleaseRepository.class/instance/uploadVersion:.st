
!MCSMReleaseRepository methodsFor: 'as yet unclassified'!
uploadVersion: aVersion
	| result stream |
	result := MCPlatformSupport
				writeStreamForFileNamed: (self squeakMapUrl, '/upload/', aVersion fileName)
				user: user
				passwd: password
				replace: false
				do: [:str | str nextPutAll: (self stringForVersion: aVersion)].
	self checkResult: result.
	stream _ result readStream.
	stream upToAll: 'http://'.
	^ 'http://', stream upToEnd! !
