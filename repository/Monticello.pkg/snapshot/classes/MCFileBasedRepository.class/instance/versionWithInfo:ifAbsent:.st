
!MCFileBasedRepository methodsFor: 'as yet unclassified'!
versionWithInfo: aVersionInfo ifAbsent: errorBlock
	| version |
	(self allFileNamesForVersionNamed: aVersionInfo name) do:
		[:fileName |
		version _ self versionFromFileNamed: fileName.
		version info = aVersionInfo ifTrue: [^ version]].
	^ errorBlock value! !
