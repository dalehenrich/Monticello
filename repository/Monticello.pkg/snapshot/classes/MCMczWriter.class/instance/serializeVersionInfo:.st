
!MCMczWriter methodsFor: 'serializing'!
serializeVersionInfo: aVersionInfo
	infoWriter ifNil: [infoWriter _ MCVersionInfoWriter new].
	^ String streamContents:
		[:s |
		infoWriter stream: s.
		infoWriter writeVersionInfo: aVersionInfo]! !
