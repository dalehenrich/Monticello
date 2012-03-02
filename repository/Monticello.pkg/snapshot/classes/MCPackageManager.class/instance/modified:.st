
!MCPackageManager methodsFor: 'accessing'!
modified: aBoolean
     modified = aBoolean ifTrue: [^ self].
	modified _ aBoolean.
	self changed: #modified.
	self class changed: (Array with: #modified with: self).

	modified ifFalse:
		[MCPlatformSupport logChangeFor: self packageName].! !
