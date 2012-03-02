
!MCAncestryTest methodsFor: 'asserting'!
assertCommonAncestorOf: leftName and: rightName in: options in: tree
	| left right ancestor |
	left _ self versionForName: leftName in: tree.
	right _ self versionForName: rightName in: tree.
	
	ancestor _ left commonAncestorWith: right.
	
	self assert: (options includes: ancestor name)! !
