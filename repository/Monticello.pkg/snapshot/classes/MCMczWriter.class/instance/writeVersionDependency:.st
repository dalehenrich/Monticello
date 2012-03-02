
!MCMczWriter methodsFor: 'visiting'!
writeVersionDependency: aVersionDependency
	| string |
	string _ (self serializeVersionInfo: aVersionDependency versionInfo).
	self addString: string at: 'dependencies/', aVersionDependency package name! !
