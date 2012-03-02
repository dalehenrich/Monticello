
!MCDiffyVersion methodsFor: 'as yet unclassified'!
snapshot
	^ snapshot ifNil: [snapshot _ MCPatcher apply: patch to: self baseSnapshot]! !
