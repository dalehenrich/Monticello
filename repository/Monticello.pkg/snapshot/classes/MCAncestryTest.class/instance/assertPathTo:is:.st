
!MCAncestryTest methodsFor: 'asserting'!
assertPathTo: aSymbol is: anArray
	self
		assertNamesOf: (self tree allAncestorsOnPathTo: (self treeFrom: (Array with: aSymbol)))
		are: anArray! !
