
!MCDictionaryRepository methodsFor: 'as yet unclassified'!
fileOutAllTo: aDirectoryString
	" MCCacheRepository default fileOutAllTo: '/tmp' "
	" Will save out the mczs in the GemStone cache to the server file system "
	| mcVersion |
	dict valuesDo: [:mcVersion |
		MCPlatformSupport writeStreamForFileNamed: (aDirectoryString, '/', mcVersion fileName) onClient: false replace: true do:
			[:stream | mcVersion fileOutOn: stream ]].! !
