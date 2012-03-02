
!MCPackageManager methodsFor: 'operations'!
unregister
	self class registry removeKey: package.
	self class changed: #allManagers! !
