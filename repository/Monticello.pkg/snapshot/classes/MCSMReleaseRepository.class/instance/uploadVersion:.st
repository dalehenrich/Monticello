
!MCSMReleaseRepository methodsFor: 'as yet unclassified'!
uploadVersion: aVersion
	| result stream |
	result _ HTTPSocket
		httpPut: (self stringForVersion: aVersion)
		to: self squeakMapUrl, '/upload/', aVersion fileName
		user: user
		passwd: password.
	self checkResult: result.
	stream _ result readStream.
	stream upToAll: 'http://'.
	^ 'http://', stream upToEnd! !
