
!MCMczReader methodsFor: 'as yet unclassified'!
loadDependencies
	dependencies _ (self zip membersMatching: 'dependencies/*') collect: [:m | self extractDependencyFrom: m].
	dependencies _ dependencies asArray.
! !
