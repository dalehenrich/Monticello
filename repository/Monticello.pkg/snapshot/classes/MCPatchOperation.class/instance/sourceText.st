
!MCPatchOperation methodsFor: 'accessing'!
sourceText
	| builder |
	builder := (Preferences diffsWithPrettyPrint and: [ self targetClass notNil and: [ self isClassPatch not ] ])
				ifTrue: 
					[PrettyTextDiffBuilder 
						from: self fromSource
						to: self toSource
						inClass: self targetClass]
				ifFalse: [TextDiffBuilder from: self fromSource to: self toSource].
	^builder buildDisplayPatch.! !
