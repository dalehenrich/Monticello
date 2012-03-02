
!MCReader class methodsFor: 'instance creation'!
on: aStream name: aFileName
	| class |
	class _ self readerClassForFileNamed: aFileName.
	^ class
		ifNil: [self error: 'Unsupported format: ', aFileName]
		ifNotNil: [class on: aStream]! !
