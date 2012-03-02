
!MCWorkingCopyTest methodsFor: 'running'!
clearPackageCache
	| cache dir |
	cache := MCCacheRepository default.
	dir :=  cache directory.
	dir ~~ nil
		ifTrue: [
			"MCCacheRepository expected"
			(dir fileNamesMatchingPattern: #( #('MonticelloMocks' $*) )) do: [:ea | dir deleteFileNamed: ea].
			(dir fileNamesMatchingPattern: #( #('MonticelloTest' $*) )) do: [:ea | dir deleteFileNamed: ea].
			(dir fileNamesMatchingPattern: #( #('rev' $*) )) do: [:ea | dir deleteFileNamed: ea]]
		ifFalse: [ 
			"MCDictionaryRepository expected - GemStone"
			cache flushCache ].! !
