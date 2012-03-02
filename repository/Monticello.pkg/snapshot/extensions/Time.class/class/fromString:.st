
!Time class methodsFor: '*monticello'!
fromString: aString
	^ self readFrom: (ReadStream on: aString).! !
