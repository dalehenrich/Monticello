
!MCPlatformSupport classSide methodsFor: 'dependents'!
dependentsFor: anObject

| d |
d := self transientGlobalNamed: #'Monticello-Dependents'.
d == nil 
  ifTrue: [
    d := Dictionary new.
    self transientGlobals at: #'Monticello-Dependents' put: d.
  ].
^d at: anObject ifAbsent: [^nil]! !
