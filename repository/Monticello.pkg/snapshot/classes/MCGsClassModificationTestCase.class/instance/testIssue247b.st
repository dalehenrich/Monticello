
!MCGsClassModificationTestCase methodsFor: 'tests'!
testIssue247b
	| loader hitAnError expectedError |
	loader := MCPackageLoader new.
	loader addDefinition: (self mockClass: 'MCMockClassK' instVarNames: #(lvar) super: 'Object').
	hitAnError := false.
	[	
		expectedError := [ loader load ] 
			on: Error 
			do: [:ex | 
				hitAnError := true. 
				ex return: ex ]] 
			on: Warning
			do: [:ex | ex resume ].
	self assert: hitAnError.
	self assert: (expectedError description beginsWith: 'Duplicate instance variables encountered: ').
	self assert: (MCMockClassKA superclass == MCMockClassKB superclass)! !
