
!MCWorkingCopy methodsFor: 'accessing'!
allRequiredPackagesNotIn: set do: aBlock

	self requiredPackages do: [:pkg | | wc |
		(set includes: pkg)
			ifFalse: [
				set add: pkg.
				aBlock value: pkg.
				pkg workingCopy allRequiredPackagesNotIn: set do: aBlock]]! !
