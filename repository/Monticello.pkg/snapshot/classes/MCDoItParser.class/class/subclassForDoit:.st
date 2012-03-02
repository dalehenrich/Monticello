
!MCDoItParser class methodsFor: 'as yet unclassified'!
subclassForDoit: aString
	^ self concreteSubclasses detect: [:ea | aString matchPattern: ea pattern] ifNone: []! !
