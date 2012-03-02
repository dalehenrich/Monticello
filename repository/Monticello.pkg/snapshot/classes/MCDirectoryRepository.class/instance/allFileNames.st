
!MCDirectoryRepository methodsFor: 'as yet unclassified'!
allFileNames
	^ (directory entries sortBy: [:a :b | a modificationTime >= b modificationTime]) collect: [:ea | ea name]! !
