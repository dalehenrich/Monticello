
!MCDirectoryRepository class methodsFor: 'instance creation'!
morphicConfigure
	^ FileList2 modalFolderSelector ifNotNilDo:
		[:directory |
		self new directory: directory]! !
