
!MCSnapshotBrowser methodsFor: 'accessing'!
selectedClass
	classSelection ifNil: [ ^nil ].
	^Smalltalk at: classSelection ifAbsent: [ nil ].
! !
