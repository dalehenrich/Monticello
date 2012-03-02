
!MCPlatformSupport classSide methodsFor: 'smalltalk'!
smalltalkAt: aGlobalName ifPresent: aBlock

| glob |
glob := System myUserProfile symbolList objectNamed: aGlobalName.
^glob ~~ nil
    ifTrue: [aBlock value: glob]
    ifFalse: [glob]! !
