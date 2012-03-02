
!MCGsClassModificationTestCase methodsFor: 'tests'!
testIssue247d
	| loader hitAnError expectedError |
	Smalltalk at: #MCMockClassKZ ifPresent: [ self assert: false ]. "MCMockClassKZ isn't supposed to exist"
	loader := MCPackageLoader new.
	loader addDefinition: (self mockClass: 'MCMockClassKZ' instVarNames: #(lvar) super: 'MCMockClassKA').
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
	self assert: expectedError gsNumber = 2271.
! !
