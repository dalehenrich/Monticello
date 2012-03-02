
!TimeStamp class methodsFor: '*monticello-instance creation'!
readFrom: stream
	| date time |
	stream skipSeparators.
	date _ Date readFrom: stream.
	stream skipSeparators.
	time _ Time readFrom: stream.
	^self 
		date: date
		time: time! !
