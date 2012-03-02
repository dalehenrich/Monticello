
!MCRepositoryInspector methodsFor: 'as yet unclassified'!
refresh
	packages _ repository packages.
	self changed: #packageList.
	self packageSelection: self packageSelection.
! !
