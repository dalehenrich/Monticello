
!MCRepositoryGroup methodsFor: 'as yet unclassified'!
repositories
	^ ((Array with: MCCacheRepository default), repositories) select: [ :ea | ea isValid ]! !
