
!MCFileBasedRepository methodsFor: 'as yet unclassified'!
basicStoreVersion: aVersion
	self
		writeStreamForFileNamed: aVersion fileName
		do: [:s | aVersion fileOutOn: s].! !
