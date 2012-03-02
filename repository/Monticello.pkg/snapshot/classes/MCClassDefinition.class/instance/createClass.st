
!MCClassDefinition methodsFor: 'installing'!
createClass

	| aClass ivArray cvArray civArray poolArray newClass |
	aClass := Smalltalk classNamed: superclassName.
	(aClass == nil and: [superclassName asString ~= 'nil']) ifTrue: [self error: 'non-existent superclass'].
	ivArray := (self instanceVariablesString findTokens: ' ') asArray.
	cvArray := (self classVariablesString findTokens: ' ')  asArray.
	civArray := (self classInstanceVariablesString findTokens: ' ')  asArray.
	poolArray := aClass poolDictionariesForNames: (self sharedPoolsString findTokens: ' ') asArray.
	newClass := nil.
	type = #normal ifTrue: [
		newClass := aClass subclass: name
			instVarNames: ivArray
			classVars: cvArray
			classInstVars: civArray
			poolDictionaries: poolArray
			inDictionary: ''
			category: category ].
	type = #transient ifTrue: [
		newClass := aClass transientSubclass: name
			instVarNames: ivArray
			classVars: cvArray
			classInstVars: civArray
			poolDictionaries: poolArray
			inDictionary: ''
			category: category ].
	(type = #variable or: [ type = #indexable ]) ifTrue: [
		newClass := aClass indexableSubclass: name
			instVarNames: ivArray
			classVars: cvArray
			classInstVars: civArray
			poolDictionaries: poolArray
			inDictionary: ''
			category: category ].
	type = #bytes ifTrue: [
		newClass := aClass byteSubclass: name
			classVars: cvArray
			classInstVars: civArray
			poolDictionaries: poolArray
			inDictionary: ''
			category: category ].
	newClass == nil ifTrue: [ ^self error: 'Unrecognized class type'].
	"pre GLASS.230-dkh.196+ versions need this call to _resolveUndeclaredSymbolsForClass: included."
	SystemChangeNotifier uniqueInstance doSilently: [ Class _resolveUndeclaredSymbolsForClass: newClass ].
	^newClass
! !
