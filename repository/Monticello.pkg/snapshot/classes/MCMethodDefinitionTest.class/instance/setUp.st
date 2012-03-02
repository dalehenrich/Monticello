
!MCMethodDefinitionTest methodsFor: 'running'!
setUp
	navigation _ (Smalltalk hasClassNamed: #SystemNavigation)
		ifTrue: [(Smalltalk at: #SystemNavigation) new]
		ifFalse: [Smalltalk].
	isModified _ self ownPackage modified.! !
