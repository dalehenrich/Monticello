
!MCStReader methodsFor: 'as yet unclassified'!
addDefinitionsFromDoit: aString
	(MCDoItParser forDoit: aString) ifNotNilDo:
		[:parser |
		parser addDefinitionsTo: definitions]! !
