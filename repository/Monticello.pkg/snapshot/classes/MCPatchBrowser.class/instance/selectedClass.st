
!MCPatchBrowser methodsFor: 'subclassResponsibility'!
selectedClass
	| definition |
	selection ifNil: [ ^nil ].
	(definition _ selection definition) ifNil: [ ^nil ].
	definition isMethodDefinition ifFalse: [ ^nil ].
	^Smalltalk at: definition className ifAbsent: [ ]! !
