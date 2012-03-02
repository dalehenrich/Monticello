
!MCPatchBrowser methodsFor: 'subclassResponsibility'!
selectedClassOrMetaClass
	| definition |
	selection ifNil: [ ^nil ].
	(definition _ selection definition) ifNil: [ ^nil ].
	definition isMethodDefinition ifFalse: [ ^nil ].
	^definition actualClass! !
