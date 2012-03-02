
!MCDirectoryRepository methodsFor: 'as yet unclassified'!
readStreamForFileNamed: aString do: aBlock
	^MCPlatformSupport readStreamForFileNamed: (directory fullNameFor: aString) onClient: self onClient do: aBlock! !
