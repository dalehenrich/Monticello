
!MCPackageManager class methodsFor: 'as yet unclassified'!
forPackage: aPackage
	^ self registry at: aPackage ifAbsent:
		[|mgr|
		mgr _ self new initializeWithPackage: aPackage.
		self registry at: aPackage put: mgr.
		self changed: (Array with: #registered with: aPackage).
		mgr]! !
