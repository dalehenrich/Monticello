
!MCClassDefinitionTest methodsFor: 'tests'!
creationMessage
	^ MessageSend
		receiver: MCClassDefinition
		selector: #name:superclassName:category:instVarNames:classVarNames:poolDictionaryNames:classInstVarNames:type:comment:commentStamp:! !
