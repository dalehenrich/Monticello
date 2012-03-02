
!MCPlatformSupport classSide methodsFor: 'io'!
writeStreamForFileNamed: aString onClient: onClient replace: aBoolean do: aBlock
	"dump things to an in-memory stream, then push the contents to the GsFile"
	| file stream |
	aBoolean ifFalse: [ (GsFile _exists: aString onClient: onClient) ifTrue: [self error: 'The file ', aString printString, ' already exists']].
	stream := RWBinaryOrTextStream on: String new.
	aBlock value: stream.
	file := GsFile open: aString mode: 'wb' onClient: onClient.
	aBoolean ifTrue: [ file rewind ].
	file nextPutAll: stream contents.
	file close.! !
