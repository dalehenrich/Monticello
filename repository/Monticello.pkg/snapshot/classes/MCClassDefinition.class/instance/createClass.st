
!MCClassDefinition methodsFor: 'installing'!
createClass
	| superClass |
	superClass _ Smalltalk at: superclassName.
	^ (ClassBuilder new)
			name: name 
			inEnvironment: superClass environment 
			subclassOf: superClass
			type: type 
			instanceVariableNames: self instanceVariablesString 
			classVariableNames: self classVariablesString 
			poolDictionaries: self sharedPoolsString
			category: category
! !
