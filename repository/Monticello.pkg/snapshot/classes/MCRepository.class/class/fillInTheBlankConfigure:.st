
!MCRepository class methodsFor: 'as yet unclassified'!
fillInTheBlankConfigure: aTemplateString
	| chunk repo |
	
	aTemplateString ifNil: [ ^ false ].
	chunk _ MCPlatformSupport request: self fillInTheBlankRequest 
			initialAnswer: aTemplateString.
			
	chunk 
		ifNotNil: [ 
			repo _ self readFrom: chunk readStream.
			repo creationTemplate: chunk. 
	].

	^ repo! !
