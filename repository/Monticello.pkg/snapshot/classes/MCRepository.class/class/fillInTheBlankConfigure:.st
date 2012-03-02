
!MCRepository class methodsFor: 'as yet unclassified'!
fillInTheBlankConfigure: aTemplateString
	| chunk repo |
	
	aTemplateString ifNil: [ ^ false ].
	chunk _ FillInTheBlankMorph 
			request: self fillInTheBlankRequest
			initialAnswer: aTemplateString
			centerAt: Sensor cursorPoint
			inWorld: World
			onCancelReturn: nil
			acceptOnCR: false
			answerExtent: 400@120.
			
	chunk 
		ifNotNil: [ 
			repo _ self readFrom: chunk readStream.
			repo creationTemplate: chunk. 
	].

	^ repo! !
