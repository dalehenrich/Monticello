
!MCPackageLoader methodsFor: 'public'!
updatePackage: aPackage withSnapshot: aSnapshot
	|  patch packageSnap |
	packageSnap _ aPackage snapshot.
	patch _ aSnapshot patchRelativeToBase: packageSnap.
	patch applyTo: self.
	packageSnap definitions do: [:ea | self provisions addAll: ea provisions]! !
