
!MCRepositoryInspector methodsFor: 'as yet unclassified'!
setRepository: aRepository workingCopy: aWorkingCopy
	repository _ aRepository.
	aWorkingCopy isNil ifFalse: [ selectedPackage _ aWorkingCopy package].
	self refresh! !
