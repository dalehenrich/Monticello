
!MCVersionReader class methodsFor: 'file services'!
loadVersionFile: fileName
	| version |
	version _ self versionFromFile: fileName.
	version workingCopy repositoryGroup addRepository:
		(MCDirectoryRepository new directory:
			(MCPlatformSupport fileDirectoryFor: fileName)).
	version load.! !
