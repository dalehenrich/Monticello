
!MCRepositoryGroup methodsFor: 'as yet unclassified'!
removeRepository: aRepository
	repositories remove: aRepository ifAbsent: [].
	self changed: #repositories! !
