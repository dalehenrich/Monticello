
!MCSMCacheRepository methodsFor: 'accessing'!
allFileNames
	^self allFullFileNames collect: [ :ea | self directory localNameFor: ea ]! !
