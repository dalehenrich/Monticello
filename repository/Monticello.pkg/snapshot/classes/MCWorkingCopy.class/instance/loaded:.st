
!MCWorkingCopy methodsFor: 'operations'!
loaded: aVersion
	ancestry _ MCWorkingAncestry new addAncestor: aVersion info.
	requiredPackages _ OrderedCollection withAll: (aVersion dependencies collect: [:ea | ea package]).
	self modified: false.
	self changed! !
