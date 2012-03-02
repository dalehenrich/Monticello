
!MCDirectoryRepository methodsFor: 'as yet unclassified'!
writeStreamForFileNamed: aString replace: aBoolean do: aBlock

	MCPlatformSupport writeStreamForFileNamed: (directory fullNameFor: aString) onClient: self onClient replace: aBoolean do: aBlock! !
