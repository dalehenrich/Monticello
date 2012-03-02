
!MCPlatformSupport classSide methodsFor: 'transients'!
transientGlobalForKey: aKey value: aValue

| d |
d := self transientGlobalNamed: #'Monticello-Transients'.
d == nil 
  ifTrue: [
    d := Dictionary new.
    self transientGlobals at: #'Monticello-Transients' put: d.
  ].
^d at: aKey put: aValue.! !
