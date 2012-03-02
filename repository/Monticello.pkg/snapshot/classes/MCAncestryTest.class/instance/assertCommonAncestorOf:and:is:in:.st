
!MCAncestryTest methodsFor: 'asserting'!
assertCommonAncestorOf: leftName and: rightName is: ancestorName in: tree
	| left right ancestor |
	left := self versionForName: leftName in: tree.
	right := self versionForName: rightName in: tree.
	
	ancestor := left commonAncestorWith: right.
	
	self assert: (ancestor name sameAs: ancestorName)! !
