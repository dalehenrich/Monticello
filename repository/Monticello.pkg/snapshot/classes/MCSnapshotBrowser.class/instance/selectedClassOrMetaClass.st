
!MCSnapshotBrowser methodsFor: 'accessing'!
selectedClassOrMetaClass
	| class |
	classSelection ifNil: [ ^nil ].
	class _ Smalltalk at: classSelection ifAbsent: [ ^nil ].
	^self switchIsClass ifTrue: [ class class ]
		ifFalse: [ class ].! !
