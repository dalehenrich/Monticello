
!MCDirectoryRepositoryTest methodsFor: 'as yet unclassified'!
addVersion: aVersion
	| file |
	file _ FileStream newFileNamed: (directory fullNameFor: aVersion fileName).
	aVersion fileOutOn: file.
	file close.! !
