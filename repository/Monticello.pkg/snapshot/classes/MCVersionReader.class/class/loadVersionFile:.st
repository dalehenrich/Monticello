
!MCVersionReader class methodsFor: 'file services'!
loadVersionFile: fileName
	| version |
	version _ self versionFromFile: fileName.
	version workingCopy repositoryGroup addRepository:
		(MCDirectoryRepository new directory:
			(FileDirectory on: (FileDirectory dirPathFor: fileName))).
	version load.
! !