
!MCPackageLoader methodsFor: 'public'!
loadWithNameLike: baseName
	self analyze.
	unloadableDefinitions isEmpty ifFalse: [self warnAboutDependencies].
	self useNewChangeSetNamedLike: baseName during: [self basicLoad].
	"make sure that the sessionMethodDictionary is updated correctly - bug38053"
	GsPackagePolicy current refreshSessionMethodDictionary! !
