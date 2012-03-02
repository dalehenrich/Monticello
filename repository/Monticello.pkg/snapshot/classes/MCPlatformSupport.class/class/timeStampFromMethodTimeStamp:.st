
!MCPlatformSupport classSide methodsFor: 'time'!
timeStampFromMethodTimeStamp: aString
	| stream |
	stream := ReadStream on: aString.
	stream skipSeparators.
	stream skipTo: Character space.
	^DateAndTime readFrom: stream.! !
