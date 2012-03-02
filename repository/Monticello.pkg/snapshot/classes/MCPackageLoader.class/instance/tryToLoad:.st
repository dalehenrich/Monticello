
!MCPackageLoader methodsFor: 'private'!
tryToLoad: aDefinition
	| originalClass exceptionSet mcfailedPresent duplicateInstanceVarDefs redefinitions |
	duplicateInstanceVarDefs := nil.
	aDefinition isOrganizationDefinition
		ifFalse: [ originalClass := aDefinition actualClass ].
	exceptionSet := Error, Warning.
	"bullet proofing load of MCFailedCopyMethodToNewClass class, since this method is involved in the load. 
	 Should be able to avoid load order errors, this way."
	mcfailedPresent := false.
	Smalltalk at: #MCFailedCopyMethodToNewClass ifPresent: [:cl | 
		exceptionSet add: cl.
		mcfailedPresent := true ].
	[aDefinition loadOver: (self obsoletionFor: aDefinition)] 
		on: exceptionSet
		do: [:ex | 
			(ex isKindOf: Warning) ifTrue: [ ^ex resume ].
			(mcfailedPresent and: [ ex isKindOf: MCFailedCopyMethodToNewClass ]) 
				ifTrue: [ | methodDef |
					methodDef := ex tag.
					additions do: [:def |
						(def isMethodDefinition 
							and: [ def className == methodDef className 
								and: [def selector == methodDef selector ]]) 
									ifTrue: [
										"method will be redefined"
										 ^ex resume ]].
					removals do: [:def |
						(def isMethodDefinition 
							and: [ def className == methodDef className 
								and: [def selector == methodDef selector ]]) 
									ifTrue: [
										"method will be removed"
										 ^ex resume ]].
					"add method and throw an error, if required"
					errorDefinitions add: ex tag.
					^ex resume].
			errorDefinitions add: aDefinition.
			((ex gsNumber = (ErrorSymbols at: #rtErrAddDupInstvar)) and: [ originalClass ~~ nil ]) "originalClass == nil when new class added that shadows an IV of superclass"
				ifTrue: [ | classDefs removedClassDefs |
					errorDefinitions remove: aDefinition. "Issue 247, remove the new def ... needs to be last def run"
					"schedule the redefinition of the subclasses of the original class"
					duplicateInstanceVarDefs := Array new: 3.
					duplicateInstanceVarDefs at: 1 put: originalClass name asString. "original class name"
					duplicateInstanceVarDefs at: 2 put: originalClass asUncachedClassDefinition. "original class definition"
					duplicateInstanceVarDefs at: 3 put: (redefinitions := OrderedCollection new). "list of classes that were defined because of this fella"
					classDefs := Dictionary new.
					additions do: [:def | 
						(def isClassDefinition and: [ def superclassName = originalClass name ])
							ifTrue: [ classDefs at: def className put: def ]].
					removedClassDefs := Dictionary new.
					removals do: [:def | 
						(def isClassDefinition and: [ def superclassName = originalClass name ])
							ifTrue: [ removedClassDefs at: def className put: def ]].
					originalClass allSubclasses do: [:subclass | | def |
						def := subclass asClassDefinition.
						removedClassDefs at: def className ifAbsent: [ |addedDef |
							(addedDef := classDefs at: def className ifAbsent: []) == nil
								ifTrue: [ 
									errorDefinitions add: def.
									redefinitions add: def ]
								ifFalse: [ 
									errorDefinitions add: addedDef.
									redefinitions add: addedDef ]]].
					errorDefinitions add: aDefinition  "Issue 247 add the new def, after all the classes repair themselves"]].
	^duplicateInstanceVarDefs! !
