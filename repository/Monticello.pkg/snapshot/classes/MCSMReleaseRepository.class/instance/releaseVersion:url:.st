
!MCSMReleaseRepository methodsFor: 'as yet unclassified'!
releaseVersion: aVersion url: urlString 
	| result |
	result := MCPlatformSupport
				httpPost: self squeakMapUrl , '/packagebyname/' , packageName , '/newrelease'
				args: (Array
						with: 'version'
								-> (Array with: (aVersion info name copyAfter: $.) extractNumber asString)
						with: 'note'
								-> (Array with: aVersion info message)
						with: 'downloadURL'
								-> (Array with: urlString))
				user: user
				passwd: password.
	result contents size > 4
		ifTrue: [self error: result contents]! !
