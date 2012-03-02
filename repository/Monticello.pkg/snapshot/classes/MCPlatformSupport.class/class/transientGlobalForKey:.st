
!MCPlatformSupport classSide methodsFor: 'transients'!
transientGlobalForKey: aKey

| d |
d := self transientGlobalNamed: #'Monticello-Transients'.
d == nil 
  ifTrue: [
    ^nil
  ].
^d at: aKey ifAbsent: [nil].! !
