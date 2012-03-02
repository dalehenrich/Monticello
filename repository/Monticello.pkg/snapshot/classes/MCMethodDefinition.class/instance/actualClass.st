
!MCMethodDefinition methodsFor: 'accessing'!
actualClass
	^Smalltalk 
		at: className
		ifPresent: [:class | classIsMeta ifTrue: [class class] ifFalse: [class]]! !
