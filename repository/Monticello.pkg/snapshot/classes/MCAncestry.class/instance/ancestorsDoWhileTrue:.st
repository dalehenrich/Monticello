
!MCAncestry methodsFor: 'ancestry'!
ancestorsDoWhileTrue: aBlock

	| seen todo next |
	seen := Set with: self.
	todo := OrderedCollection with: self.
	[todo isEmpty] whileFalse: [
		next := todo removeFirst.
		next ancestors do: [:ea |
			(seen includes: ea) 
				ifFalse: [
					seen add: ea.
					(aBlock value: ea) ifTrue: [ todo add: ea ]]]]! !
