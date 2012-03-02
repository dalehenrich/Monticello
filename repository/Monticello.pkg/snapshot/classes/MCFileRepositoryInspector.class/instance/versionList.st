
!MCFileRepositoryInspector methodsFor: 'morphic ui'!
versionList
	| result sortBlock |
	result _ selectedPackage isNil
		ifTrue: [ versions ]
		ifFalse: [ versions select: [ :each | selectedPackage = each first ] ].
	sortBlock _ (self orderSpecs at: order) value.
	sortBlock isNil ifFalse: [
		result _ result asSortedCollection: [:a :b | [sortBlock value: a value: b] on: Error do: [true]]].
	^result _ result 
		collect: [ :each | self versionHighlight: each fourth ]! !
