
!MCGsClassModificationTestCase methodsFor: 'tests'!
test2
	| loader d |
	loader := MCPackageLoader new.
	loader addDefinition: (self mockClass: 'MCMockClassKA' instVarNames: #() super: 'MCMockClassK').
	loader addDefinition: (self mockClass: 'MCMockClassKB' instVarNames: #() super: 'MCMockClassK').
	loader addDefinition: (self mockClass: 'MCMockClassK' instVarNames: #(lvar) super: 'Object').
	[	loader load.
		self assert: (MCMockClassKA superclass == MCMockClassKB superclass) ] 
			on: Warning
			do: [:ex | ex resume ]! !
