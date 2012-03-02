
!MCWorkingCopyBrowser methodsFor: 'actions'!
saveVersion
	| repo |
	self canSave ifFalse: [^self].
	self checkForNewerVersions ifFalse: [^self].
	repo _ self repository.
	workingCopy newVersion ifNotNilDo:
		[:v |
		(MCVersionInspector new version: v) show.
		Cursor wait showWhile: [repo storeVersion: v].
		MCCacheRepository default cacheAllFileNamesDuring: 
			[repo cacheAllFileNamesDuring: 
				[v allAvailableDependenciesDo:
					[:dep |
					(repo includesVersionNamed: dep info name)
						ifFalse: [repo storeVersion: dep]]]]]! !
