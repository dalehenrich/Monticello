
!MCSerializationTest methodsFor: 'mocks'!
mockDiffyVersion
	| repos workingCopy base next |
	repos _ MCDictionaryRepository new.
	workingCopy _ MCWorkingCopy forPackage: self mockPackage.
	workingCopy repositoryGroup addRepository: repos.
	MCRepositoryGroup default removeRepository: repos.
	base _ self mockVersion.
	repos storeVersion: base.
	self change: #a toReturn: 'a2'.
	next _ self mockVersionWithAncestor: base.
	^ next asDiffAgainst: base! !
