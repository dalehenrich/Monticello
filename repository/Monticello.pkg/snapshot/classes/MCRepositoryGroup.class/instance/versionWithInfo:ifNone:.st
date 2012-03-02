
!MCRepositoryGroup methodsFor: 'as yet unclassified'!
versionWithInfo: aVersionInfo ifNone: aBlock
	self repositoriesDo: [:ea | (ea versionWithInfo: aVersionInfo) ifNotNilDo: [:v | ^ v]].
	^aBlock value! !
