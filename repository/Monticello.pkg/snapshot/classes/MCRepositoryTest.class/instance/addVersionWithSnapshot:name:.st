
!MCRepositoryTest methodsFor: 'actions'!
addVersionWithSnapshot: aSnapshot name: aString
	| version |
	version _ self versionWithSnapshot: aSnapshot name: aString.
	self addVersion: version.
	^ version info! !
