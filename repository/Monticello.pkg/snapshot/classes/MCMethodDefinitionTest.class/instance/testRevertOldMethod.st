
!MCMethodDefinitionTest methodsFor: 'testing'!
testRevertOldMethod
	| definition changeRecord |
	true ifTrue: [ ^self ]. "GemStone doesn't support overrides"
	Object compile: 'yourself ^ self' classified: MCMockPackageInfo new methodCategoryPrefix.
	definition := (MethodReference class: Object selector: #yourself) asMethodDefinition.
	changeRecord := definition scanForPreviousVersion.
	MCPlatformSupport supportsMethodOverride
		ifTrue: [
			self assert: changeRecord notNil.
			self assert: changeRecord category = 'accessing'.
			changeRecord fileIn.
		].! !
