
!MCClassDefinitionTest methodsFor: 'tests'!
testKindOfSubclass
	| classes d |
	classes := (Array with: self mockClassA with: String with: MethodContext with: Float).
	classes do: [:c |
		d :=  c asClassDefinition.
		self assert: d kindOfSubclass = c kindOfSubclass.
	].! !
