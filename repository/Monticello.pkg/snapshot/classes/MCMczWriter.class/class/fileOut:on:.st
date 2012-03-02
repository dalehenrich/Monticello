
!MCMczWriter class methodsFor: 'as yet unclassified'!
fileOut: aVersion on: aStream
	| inst |
	inst _ self on: aStream.
	inst writeVersion: aVersion.
	inst flush.
	
! !
