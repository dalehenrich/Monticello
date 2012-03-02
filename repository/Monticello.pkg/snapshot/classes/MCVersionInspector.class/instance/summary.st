
!MCVersionInspector methodsFor: 'as yet unclassified'!
summary
	^self hasVersion
		ifTrue: [ self versionSummary ]
		ifFalse: [ String new ]! !
