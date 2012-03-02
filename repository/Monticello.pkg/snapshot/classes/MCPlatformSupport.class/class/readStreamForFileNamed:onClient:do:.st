
!MCPlatformSupport classSide methodsFor: 'io'!
readStreamForFileNamed: aString onClient: onClient do: aBlock
	| file stream |
	file := GsFile open: aString mode: 'rb' onClient: onClient.
	stream := RWBinaryOrTextStream on: file contents.
	stream name: aString.
	file close.
	^aBlock value: stream! !
