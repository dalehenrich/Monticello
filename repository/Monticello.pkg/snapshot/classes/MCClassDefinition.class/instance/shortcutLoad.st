
!MCClassDefinition methodsFor: 'installing'!
shortcutLoad
	| cl |
	cl := self actualClass.
	cl category: self category asString.
	self hasComment
		ifTrue: [ cl classComment: comment stamp: commentStamp ]! !
