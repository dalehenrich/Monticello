
!MCMczReader methodsFor: 'as yet unclassified'!
loadDependencies
	dependencies := (self zip membersMatching: 'dependencies/*') collect: [:m | self extractDependencyFrom: m].
	dependencies := dependencies asArray.! !
