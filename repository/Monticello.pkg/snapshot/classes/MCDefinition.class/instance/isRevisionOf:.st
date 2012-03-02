
!MCDefinition methodsFor: 'comparing'!
isRevisionOf: aDefinition
	aDefinition == nil ifTrue: [ ^false ].
	^ aDefinition description = self description! !
