
!MCPlatformSupport classSide methodsFor: 'smalltalk'!
smalltalkAt: aGlobalName ifAbsent: aBlock

| glob |
glob := System myUserProfile symbolList objectNamed: aGlobalName.
^glob == nil
    ifTrue: [aBlock value]
    ifFalse: [glob]! !
