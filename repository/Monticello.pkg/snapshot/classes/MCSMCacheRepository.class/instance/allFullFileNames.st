
!MCSMCacheRepository methodsFor: 'accessing'!
allFullFileNames
	| cachedPackages |
	cachedPackages _ smCache map installedPackages select: [ :ea | ea isCached ].
	^Array streamContents: [ :s |
		cachedPackages do: [ :ea | | d |
			d _ ea cacheDirectory.
			(d fileNamesMatching: '*.mcz') do: [ :fn | s nextPut: (d fullNameFor: fn) ]]]! !
