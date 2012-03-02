
!PackageInfo methodsFor: '*monticello'!
allOverridenMethods
	^ MCPlatformSupport allBehaviors gather:
		[:class |
		(self overriddenMethodsInClass: class)]! !
