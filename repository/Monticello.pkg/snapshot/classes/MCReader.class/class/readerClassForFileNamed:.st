
!MCReader class methodsFor: 'testing'!
readerClassForFileNamed: fileName
	| subCs |
	subCs := self concreteSubclasses .
	subCs size == 0 
		ifTrue:[ Warning signal: 'no subclasses found, ClassOrganizer broken' ].
	^ subCs 
		detect: [:c | c canReadFileNamed: fileName ] 
		ifNone:[ nil ]
! !
