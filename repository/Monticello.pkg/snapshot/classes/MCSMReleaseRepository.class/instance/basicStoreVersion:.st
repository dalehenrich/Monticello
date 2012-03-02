
!MCSMReleaseRepository methodsFor: 'as yet unclassified'!
basicStoreVersion: aVersion
	| url |
	url _ self uploadVersion: aVersion.
	self releaseVersion: aVersion url: url! !
