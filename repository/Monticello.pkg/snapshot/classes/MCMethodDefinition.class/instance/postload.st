
!MCMethodDefinition methodsFor: 'installing'!
postload
	self isInitializer ifTrue: [self actualClass theNonMetaClass initialize]! !
