
!MCDefinition class methodsFor: 'as yet unclassified'!
instanceLike: aDefinition
	| instances |
	instances := SessionTemps current
		at: #'MCDefinition_Instances'
		ifAbsent: [ SessionTemps current at: #'MCDefinition_Instances' put: MCPlatformSupport newWeakSet ].
	^ (instances like: aDefinition) ifNil: [ instances add: aDefinition ]! !
