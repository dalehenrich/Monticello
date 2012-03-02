
!MCFtpRepository methodsFor: 'required'!
readStreamForFileNamed: aString do: aBlock
	| stream |
	^ self clientDo:
		[:client |
		client binary.
		stream _ RWBinaryOrTextStream on: String new.
		stream nextPutAll: (client getFileNamed: aString).
		aBlock value: stream reset]! !
