
!MCAncestry methodsFor: 'ancestry'!
topologicalAncestors
	| frontier f |
	^ Array streamContents:
		[:s |
		frontier _ MCFrontier frontierOn: self.
		[f _ frontier frontier.
		s nextPutAll: f.
		frontier removeAll: f.
		f isEmpty] whileFalse] ! !
