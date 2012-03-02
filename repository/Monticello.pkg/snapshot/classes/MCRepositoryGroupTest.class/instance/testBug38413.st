
!MCRepositoryGroupTest methodsFor: 'tests'!
testBug38413

	MCRepositoryGroup default repositoriesDo: [:rep | Error signal: 'hello world' ].! !
