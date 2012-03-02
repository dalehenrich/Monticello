
!MCPackageLoader methodsFor: 'public'!
load
	self analyze.
	unloadableDefinitions isEmpty ifFalse: [self warnAboutDependencies].
	self useNewChangeSetDuring: [self basicLoad].
	"make sure that the sessionMethodDictionary is updated correctly - bug38053"
	GsPackagePolicy current refreshSessionMethodDictionary! !
