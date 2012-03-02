
!MCPackageManager methodsFor: 'operations'!
unregister
	self class registry removeKey: package.
	self class changed: (Array with: #unregistered with: package)! !
