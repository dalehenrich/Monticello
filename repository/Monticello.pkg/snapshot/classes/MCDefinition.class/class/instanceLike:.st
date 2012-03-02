
!MCDefinition class methodsFor: 'as yet unclassified'!
instanceLike: aDefinition
	Instances ifNil: [Instances _ WeakSet new].
	^ (Instances like: aDefinition) ifNil: [Instances add: aDefinition]! !
