
!MCRepositoryGroup methodsFor: 'as yet unclassified'!
repositoriesDo: aBlock
	self repositories do: [:ea | [aBlock value: ea] on: Error do: [:ex | ]]! !
