
!MCPatchOperation methodsFor: 'accessing'!
sourceText
	| builder |
	builder := TextDiffBuilder from: self fromSource to: self toSource.
	^ builder buildDisplayPatch! !
