
!MCMethodDefinitionTest methodsFor: 'running'!
setUp
	super setUp.
	self mockSnapshot. "so we have something to restore to"
	navigation _ (Smalltalk hasClassNamed: #SystemNavigation)
		ifTrue: [(Smalltalk at: #SystemNavigation) new]
		ifFalse: [MCPlatformSupport].
! !
