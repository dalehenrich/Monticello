
!MCPlatformSupport classSide methodsFor: 'http'!
writeStreamForFileNamed: url user: user passwd: passwd replace: ignoreBoolean do: aBlock
	| stream |
	stream _ RWBinaryOrTextStream on: String new.
	aBlock value: stream.
	Transcript cr; show: url.
	^HTTPSocket
					httpPut: stream contents
					to: url
					user: user
					passwd: passwd.! !
