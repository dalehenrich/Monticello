
!MCStReader methodsFor: 'evaluating'!
loadDefinitions
	| filePackage |
	filePackage _
		FilePackage new
			fullName: 'ReadStream';
			fileInFrom: self readStream.
	definitions _ OrderedCollection new.
	filePackage classes do:
		[:pseudoClass |
		pseudoClass hasDefinition
			ifTrue: [definitions add:
					(self classDefinitionFrom: pseudoClass)].
		definitions addAll: (self methodDefinitionsFor: pseudoClass).
		definitions addAll: (self methodDefinitionsFor: pseudoClass metaClass)].
	filePackage doIts do:
		[:ea |
		self addDefinitionsFromDoit: ea string].! !
