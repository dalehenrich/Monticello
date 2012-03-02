
!MCWorkingCopy methodsFor: 'accessing'!
allRequiredPackagesDo: aBlock
	| set |
	set := IdentitySet new.
	self allRequiredPackagesNotIn: set do: aBlock! !
