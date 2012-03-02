
!MCPackageLoader methodsFor: 'public'!
installSnapshot: aSnapshot
	| patch |
	patch _ aSnapshot patchRelativeToBase: MCSnapshot empty.
	patch applyTo: self.! !
