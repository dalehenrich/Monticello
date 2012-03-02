
!MCClassDefinitionTest methodsFor: 'as yet unclassified'!
testEqualsSensitivity
	| message a b defA args defB |
	message _ self creationMessage.
	a _ #(ClassA SuperA CategoryA #(iVarA) #(CVarA) #(PoolA) #(ciVarA)
			typeA 'A comment' 'A').
	b _ #(ClassB SuperB CategoryB #(iVarB) #(CVarB) #(PoolB) #(ciVarB)
			typeB 'B comment' 'B').
	
	defA _ message valueWithArguments: a.
	1 to: 8 do: [:index |
				args _ a copy.
				args at: index put: (b at: index).
				defB _ message valueWithArguments: args.
				self deny: defA = defB.]! !
