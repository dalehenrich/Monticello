
!MCMczWriter methodsFor: 'serializing'!
serializeInBinary: aSnapshot
	| writer s |
	s _ RWBinaryOrTextStream on: String new.
	writer _ DataStream on: s.
	writer nextPut: aSnapshot.
	^ s contents! !
