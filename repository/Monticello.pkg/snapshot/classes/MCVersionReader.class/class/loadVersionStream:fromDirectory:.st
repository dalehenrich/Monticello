
!MCVersionReader class methodsFor: '*monticello-file services'!
loadVersionStream: stream fromDirectory: directory
	| version |
	version _ self versionFromStream: stream.
	version workingCopy repositoryGroup addRepository: (MCDirectoryRepository new directory: directory).
	version load.! !
