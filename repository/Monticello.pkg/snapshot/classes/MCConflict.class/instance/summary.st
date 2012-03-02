
!MCConflict methodsFor: 'as yet unclassified'!
summary
	| attribute |
	attribute _ 
		self isResolved
			ifTrue: [self remoteChosen ifTrue: [#underlined] ifFalse: [#struckOut]]
			ifFalse: [#bold].
	^ Text string: operation summary attribute: (TextEmphasis perform: attribute)! !
