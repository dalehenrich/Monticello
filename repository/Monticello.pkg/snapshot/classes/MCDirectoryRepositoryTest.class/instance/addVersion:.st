
!MCDirectoryRepositoryTest methodsFor: 'as yet unclassified'!
addVersion: aVersion 
	MCPlatformSupport
		writeStreamForFileNamed: (directory fullNameFor: aVersion fileName)
		replace: false
		do: [:file | aVersion fileOutOn: file]! !
