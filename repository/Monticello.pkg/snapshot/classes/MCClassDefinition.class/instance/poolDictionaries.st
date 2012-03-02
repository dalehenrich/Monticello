
!MCClassDefinition methodsFor: 'accessing'!
poolDictionaries
	^ (self selectVariables: #isPoolImport) collect: [:ea | ea asSymbol ]! !
