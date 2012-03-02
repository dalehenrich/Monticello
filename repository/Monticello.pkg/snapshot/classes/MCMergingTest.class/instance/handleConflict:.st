
!MCMergingTest methodsFor: 'emulating'!
handleConflict: aConflict	
	|l r|
	l _ #removed.
	r _ #removed.
	aConflict localDefinition ifNotNilDo: [:d | l _ d token].
	aConflict remoteDefinition ifNotNilDo: [:d | r _ d token].	
	conflicts _ conflicts copyWith: (Array with: r with: l).
	(l = #removed or: [r = #removed])
		ifTrue: [aConflict chooseRemote]
		ifFalse:
			[l > r
				ifTrue: [aConflict chooseLocal]
				ifFalse: [aConflict chooseRemote]]! !
