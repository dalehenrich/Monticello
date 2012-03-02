
!MCAncestry methodsFor: 'ancestry'!
commonAncestorWith: aNode
	| commonAncestors |
	commonAncestors _ self commonAncestorsWith: aNode.
	^ commonAncestors at: 1 ifAbsent: [nil]! !
