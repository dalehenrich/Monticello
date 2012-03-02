
!MCFileBasedRepository methodsFor: 'as yet unclassified'!
basicStoreVersion: aVersion
	self
		writeStreamForFileNamed: aVersion fileName
		do: [:s | aVersion fileOutOn: s].
	aVersion isCacheable ifTrue: [
		cache ifNil: [cache _ Dictionary new].
		cache at: aVersion fileName put: aVersion].
! !