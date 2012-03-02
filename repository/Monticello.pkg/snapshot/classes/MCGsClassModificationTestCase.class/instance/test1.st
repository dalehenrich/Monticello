
!MCGsClassModificationTestCase methodsFor: 'tests'!
test1
	| loader d |
	loader := MCPackageLoader new.
	loader addDefinition: (self mockClass: 'MCMockClassM' instVarNames: #() super: 'MCMockClassJ').
	loader addDefinition: (self mockClass: 'MCMockClassL' instVarNames: #() super: 'MCMockClassJ').
	loader addDefinition: (self mockClass: 'MCMockClassJ' instVarNames: #(ivar) super: 'Object').
	[	loader load.
		self assert: (MCMockClassK superclass == MCMockClassL superclass) ] 
			on: Warning
			do: [:ex | ex resume ]! !
