
!MCDirectoryRepositoryTest methodsFor: 'as yet unclassified'!
directory
	directory ifNil:
		[directory _ MCPlatformSupport defaultDirectoryNamed: 'mctest'].
	^ directory! !
