
!MCMethodDefinitionTest methodsFor: 'testing'!
testRevertOverrideMethod
	| definition |
	true ifTrue: [ ^self ]. "GemStone doesn't support overrides"
	self class compile: 'override ^ 2' classified: self mockOverrideMethodCategory.
	definition := (MethodReference class: self class selector: #override) asMethodDefinition.
	self assert: definition isOverrideMethod.
	self assert: self override = 2.
	definition unload.
	MCPlatformSupport supportsMethodOverride
		ifTrue: [
			self assert: self override = 1.
			self assert: (MethodReference class: self class selector: #override) category = 'mocks'.
	
		].! !
