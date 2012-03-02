
!MCAncestry methodsFor: 'ancestry'!
hasAncestor: aVersionInfo alreadySeen: aList
	| queue |
	(aList includes: self) ifTrue: [^ false].
	aList add: self.
	self = aVersionInfo ifTrue: [ ^true ].
	queue := OrderedCollection withAll: self ancestors.
	[queue isEmpty] whileFalse: [ | anc |
		anc := queue removeFirst.
		(aList includes: anc) 
			ifFalse: [
				aList add: anc.
				anc = aVersionInfo ifTrue: [ ^true ].
				queue addAll: anc ancestors]].
	^false! !
