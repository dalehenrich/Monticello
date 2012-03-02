
!MCPackageLoader methodsFor: 'public'!
loadWithName: baseName
	self analyze.
	unloadableDefinitions isEmpty ifFalse: [self warnAboutDependencies].
	self useChangeSetNamed: baseName during: [self basicLoad].
	"make sure that the sessionMethodDictionary is updated correctly - bug38053"
	GsPackagePolicy current refreshSessionMethodDictionary! !
