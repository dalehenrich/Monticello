
!MCStReader methodsFor: 'as yet unclassified'!
classInstVarNamesFor: aPseudoClass
	| tokens |
	aPseudoClass metaClass hasDefinition ifFalse: [^ #()].
	
	tokens _ Scanner new scanTokens: aPseudoClass metaClass definition.
	tokens size = 4 ifFalse: [self error: 'Unrecognized metaclass definition'].
	^ tokens last findTokens: ' '! !
