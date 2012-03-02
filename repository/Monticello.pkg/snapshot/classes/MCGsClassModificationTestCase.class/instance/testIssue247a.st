
!MCGsClassModificationTestCase methodsFor: 'tests'!
testIssue247a
	| loader hitAnError expectedError |
	loader := MCPackageLoader new.
	loader addDefinition: (self mockClass: 'MCMockClassJ' instVarNames: #(ivar) super: 'Object').
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
	self assert: (MCMockClassK superclass == MCMockClassL superclass)! !
