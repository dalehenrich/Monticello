
!MCScriptDefinition methodsFor: 'as yet unclassified'!
installScript: aString
	self packageInfo perform: (self scriptSelector, ':') asSymbol with: aString! !
