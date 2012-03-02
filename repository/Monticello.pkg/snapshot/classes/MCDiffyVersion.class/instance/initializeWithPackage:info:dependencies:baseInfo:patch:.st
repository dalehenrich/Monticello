
!MCDiffyVersion methodsFor: 'as yet unclassified'!
initializeWithPackage: aPackage info: aVersionInfo dependencies: aCollection baseInfo: baseVersionInfo patch: aPatch
	patch _ aPatch.
	base _ baseVersionInfo.
	super initializeWithPackage: aPackage info: aVersionInfo snapshot: nil dependencies: aCollection.
! !
