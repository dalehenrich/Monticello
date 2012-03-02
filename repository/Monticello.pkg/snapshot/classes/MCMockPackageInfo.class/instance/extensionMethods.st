
!MCMockPackageInfo methodsFor: 'as yet unclassified'!
extensionMethods
	^ Array with: (MethodReference new 
					setStandardClass: MCSnapshotTest 
					methodSymbol: #mockClassExtension)! !
