
!MCWorkingCopyTest methodsFor: 'running'!
setUp
	| repos1 repos2 |
	super setUp.
	self clearPackageCache.
	self mockSnapshot. "so we have something to restore to"
	repositoryGroup _ MCRepositoryGroup new.
	workingCopy _ MCWorkingCopy forPackage: self mockPackage.
	versions _ Dictionary new.
	versions2 _ Dictionary new.
	repos1 _ MCDictionaryRepository new dictionary: versions.
	repos2 _ MCDictionaryRepository new dictionary: versions2.
	repositoryGroup addRepository: repos1.
	repositoryGroup addRepository: repos2.
	MCRepositoryGroup default removeRepository: repos1; removeRepository: repos2.
	workingCopy repositoryGroup: repositoryGroup.
	savedInitials _ MCPlatformSupport authorInitials.
	MCPlatformSupport setAuthorInitials: 'abc'.! !
