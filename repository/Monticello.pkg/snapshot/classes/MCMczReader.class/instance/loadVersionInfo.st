
!MCMczReader methodsFor: 'as yet unclassified'!
loadVersionInfo
	info _ self extractInfoFrom: (self parseMember: 'version')! !
