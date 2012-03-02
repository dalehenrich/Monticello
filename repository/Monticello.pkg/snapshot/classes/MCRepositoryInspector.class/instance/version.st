
!MCRepositoryInspector methodsFor: 'as yet unclassified'!
version
	^ version ifNil: [version _ repository versionWithInfo: selectedVersion]! !
