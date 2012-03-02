
!MCVersionHistoryBrowser methodsFor: 'accessing'!
summary
	| selInfo |
	selInfo _ self selectedInfo.
	^ selInfo 
		ifNil: ['']
		ifNotNil: [selInfo summary]! !
