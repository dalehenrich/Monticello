
!MCSerializationTest methodsFor: 'asserting'!
assertClass: readerClass providesServices: labels
	| services suffix |
	suffix _ readerClass extension.
	self assert: (FileList isReaderNamedRegistered: readerClass name).
	services _ readerClass fileReaderServicesForFile: 'foo' suffix: suffix.
	self assert: ((services collect: [:service | service buttonLabel]) includesAllOf: labels)! !
