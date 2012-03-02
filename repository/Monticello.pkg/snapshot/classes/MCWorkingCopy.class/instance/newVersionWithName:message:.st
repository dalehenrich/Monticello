
!MCWorkingCopy methodsFor: 'operations'!
newVersionWithName: nameString message: messageString
	| info deps |
	info _ ancestry infoWithName: nameString message: messageString.
	ancestry _ MCWorkingAncestry new addAncestor: info.
	self modified: true; modified: false.
	
	deps _ self requiredPackages collect:
		[:ea | 
		MCVersionDependency
			package: ea
			info: ea workingCopy currentVersionInfo].

	^ MCVersion
		package: package
		info: info
		snapshot: package snapshot
		dependencies: deps! !
