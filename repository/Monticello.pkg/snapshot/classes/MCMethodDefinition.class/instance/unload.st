
!MCMethodDefinition methodsFor: 'installing'!
unload
	| previousVersion |
	self isOverrideMethod ifTrue: [previousVersion _ self scanForPreviousVersion].
	previousVersion
		ifNil: [self actualClass ifNotNilDo: [:class | class removeSelector: selector ifAbsent: []]]
		ifNotNil: [previousVersion fileIn]! !
