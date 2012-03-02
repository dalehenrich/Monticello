
!MCMcdWriter methodsFor: 'as yet unclassified'!
writeBaseInfo: aVersionInfo
	| string |
	string _ self serializeVersionInfo: aVersionInfo.
	self addString: string at: 'base'.! !
