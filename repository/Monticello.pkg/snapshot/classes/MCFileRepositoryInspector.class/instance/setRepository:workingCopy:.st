
!MCFileRepositoryInspector methodsFor: 'as yet unclassified'!
setRepository: aFileBasedRepository workingCopy: aWorkingCopy
	order _ self class order.
	repository _ aFileBasedRepository.
	self refresh.
	aWorkingCopy
		ifNil: [selectedPackage _ self packageList isEmpty ifFalse: [self packageList first]]
		ifNotNil: [ selectedPackage _ aWorkingCopy ancestry ancestorString copyUpToLast: $- ].
	MCWorkingCopy addDependent: self.
! !
