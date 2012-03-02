
!TimeStamp class methodsFor: '*monticello-instance creation'!
fromMethodTimeStamp: aString
	| stream |
	stream _ ReadStream on: aString.
	stream skipSeparators.
	stream skipTo: Character space.
	^self readFrom: stream.! !
