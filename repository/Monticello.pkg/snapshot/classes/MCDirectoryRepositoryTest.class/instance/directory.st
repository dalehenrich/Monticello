
!MCDirectoryRepositoryTest methodsFor: 'as yet unclassified'!
directory
	directory ifNil:
		[directory _ FileDirectory default directoryNamed: 'mctest'.
		directory assureExistence].
	^ directory! !
