
!MCClassDefinitionTest methodsFor: 'as yet unclassified'!
testKindOfSubclass
	| classes d |
	classes _ {self mockClassA. String. MethodContext. WeakArray. Float}.
	classes do: [:c |
		d _  c asClassDefinition.
		self assert: d kindOfSubclass = c kindOfSubclass.
	].! !
