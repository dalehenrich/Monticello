
!MCMockDependency methodsFor: 'accessing'!
initializeWithTree: expr
	expr isSymbol
		ifTrue: [name _ expr.
				children _ Array new.
				hasResolution _ true.]
		ifFalse: [name _ expr first.
				expr second isSymbol
					ifTrue: [hasResolution _ false.
							children _ Array new]
					ifFalse: [hasResolution _ true.
							children _ expr second]]! !
