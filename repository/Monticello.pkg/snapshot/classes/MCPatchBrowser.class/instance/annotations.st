
!MCPatchBrowser methodsFor: 'as yet unclassified'!
annotations
	^selection ifNil: [ super annotations ]
		ifNotNil: [ selection annotations ]! !
