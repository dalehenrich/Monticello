
!PackageInfo methodsFor: '*monticello'!
externalClasses
	| myClasses |
	myClasses := self classesAndMetaClasses.
	^ Array streamContents:
		[:s |
		MCPlatformSupport allBehaviors do:
			[:class |
			(myClasses includes: class) ifFalse: [s nextPut: class]]]! !
