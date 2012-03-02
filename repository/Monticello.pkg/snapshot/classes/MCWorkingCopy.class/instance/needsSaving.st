
!MCWorkingCopy methodsFor: 'accessing'!
needsSaving
	^ self modified 
		or: [self allRequiredPackagesDo: [:pkg | 
				pkg workingCopy modified ifTrue: [ ^true ]].
			false]! !
