
!MCSMReleaseRepository methodsFor: 'as yet unclassified'!
stringForVersion: aVersion
	| stream |
	stream _ RWBinaryOrTextStream on: String new.
	aVersion fileOutOn: stream.
	^ stream contents! !
