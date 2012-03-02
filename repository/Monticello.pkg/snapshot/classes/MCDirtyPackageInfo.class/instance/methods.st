
!MCDirtyPackageInfo methodsFor: 'as yet unclassified'!
methods
	^ self mockClassA selectors
		select: [:ea | ea beginsWith: 'ordinal']
		thenCollect:
			[:ea | 
				MethodReference new 
					setStandardClass: MCMockClassA 
					methodSymbol: ea].! !
