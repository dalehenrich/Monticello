
!MCPlatformSupport classSide methodsFor: 'dependents'!
removeDependentsFor: anObject

| d |
d := self transientGlobalNamed: #'Monticello-Dependents'.
d == nil 
  ifTrue: [
	^self
  ].
d removeKey: anObject ifAbsent: []! !
