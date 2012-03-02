
!UUIDGenerator class methodsFor: '*monticello'!
default

	| d |
	d := MCPlatformSupport transientGlobalForKey: #UUID_DEFUALT.
	d == nil 
		ifTrue: [
		 	d := self new initialize.
			MCPlatformSupport transientGlobalForKey: #UUID_DEFUALT value: d.
		].
	^d! !
