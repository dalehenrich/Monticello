
!MCWorkingCopy class methodsFor: 'as yet unclassified'!
ancestorsFromArray: anArray cache: aDictionary
	^ anArray ifNotNil: [anArray collect: [:dict | self infoFromDictionary: dict cache: aDictionary]]! !
