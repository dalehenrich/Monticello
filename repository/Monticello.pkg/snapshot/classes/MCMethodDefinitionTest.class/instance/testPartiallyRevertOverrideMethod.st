
!MCMethodDefinitionTest methodsFor: 'testing'!
testPartiallyRevertOverrideMethod
	| definition |
	true ifTrue: [ ^self ]. "GemStone doesn't support overrides"
	self class compile: 'override ^ 2' classified: '*foobarbaz'.
	self class compile: 'override ^ 3' classified: self mockOverrideMethodCategory.
	self class compile: 'override ^ 4' classified: self mockOverrideMethodCategory.
	definition := (MethodReference class: self class selector: #override) asMethodDefinition.
	self assert: definition isOverrideMethod.
	self assert: self override = 4.
	definition unload.
	MCPlatformSupport supportsMethodOverride
		ifTrue: [
			self assert: self override = 2.
			self assert: (MethodReference class: self class selector: #override) category = '*foobarbaz'.
		].! !
