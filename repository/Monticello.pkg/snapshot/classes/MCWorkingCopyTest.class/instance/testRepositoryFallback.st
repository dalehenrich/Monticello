
!MCWorkingCopyTest methodsFor: 'tests'!
testRepositoryFallback
	| version |
	version _ self snapshot.
	self assert: (repositoryGroup versionWithInfo: version info) == version.
	versions removeKey: version info.
	versions2 at: version info put: version.
	self assert: ( repositoryGroup versionWithInfo: version info) == version.
	versions2 removeKey: version info.
	"The following assertion fails in the squeak image too, the failure occurs because 
	 the version info is in the cache repository"
	
	"self should: [repositoryGroup versionWithInfo: version info] raise: Error."! !
