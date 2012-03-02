
!MCMczReader methodsFor: 'as yet unclassified'!
loadPackage
	| dict |
	dict _ self parseMember: 'package'.
	package _ MCPackage named: (dict at: #name)! !
