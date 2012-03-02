
!MCFileRepositoryInspector methodsFor: 'morphic ui'!
version
	^ version ifNil:
		[Cursor wait showWhile:
			[version _ repository versionFromFileNamed: selectedVersion].
		version]! !
