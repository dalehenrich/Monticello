
!MCVersionReader class methodsFor: 'reading'!
file: fileName streamDo: aBlock
	| file |
	^ 	[file _ FileStream readOnlyFileNamed: fileName.
		aBlock value: file]
			ensure: [file close]! !
