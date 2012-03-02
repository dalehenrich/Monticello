
!MCMcdReader methodsFor: 'as yet unclassified'!
loadBaseInfo
	^ baseInfo _ self extractInfoFrom: (self parseMember: 'base')! !
