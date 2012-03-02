
!MCMczWriter methodsFor: 'visiting'!
writeVersionInfo: aVersionInfo
	| string |
	string _ self serializeVersionInfo: aVersionInfo.
	self addString: string at: 'version'.
! !
