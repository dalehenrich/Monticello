
!MCRepositoryTest methodsFor: 'actions'!
saveSnapshot: aSnapshot named: aString
	| version |
	version _ self versionWithSnapshot: aSnapshot name: aString.
	repository storeVersion: version.
	^ version info
	! !
