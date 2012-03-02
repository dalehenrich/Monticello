
!MCAncestry methodsFor: 'ancestry'!
breadthFirstAncestorsDo: aBlock
	| seen todo next |
	seen _ Set with: self.
	todo _ OrderedCollection with: self.
	[todo isEmpty] whileFalse:
		[next _ todo removeFirst.
		next ancestors do:
			[:ea |
			(seen includes: ea) ifFalse:
				[aBlock value: ea.
				seen add: ea.
				todo add: ea]]]! !
