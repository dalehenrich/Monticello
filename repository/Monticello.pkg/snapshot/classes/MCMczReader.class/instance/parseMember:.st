
!MCMczReader methodsFor: 'as yet unclassified'!
parseMember: fileName
	| tokens |
	tokens _ (self scanner scanTokens: (self zip contentsOf: fileName)) first.
	^ self associate: tokens! !
