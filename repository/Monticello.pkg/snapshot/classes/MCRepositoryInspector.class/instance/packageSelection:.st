
!MCRepositoryInspector methodsFor: 'morphic ui'!
packageSelection: aNumber
	selectedPackage _ aNumber isZero ifFalse: [ packages at: aNumber ].
	versions _ repository versionsAvailableForPackage: selectedPackage.
	self changed: #packageSelection; changed: #versionList! !
