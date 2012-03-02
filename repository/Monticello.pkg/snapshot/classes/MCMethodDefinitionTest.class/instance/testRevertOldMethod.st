
!MCMethodDefinitionTest methodsFor: 'testing'!
testRevertOldMethod
	| definition changeRecord |
	Object compile: 'yourself ^ self' classified: MCMockPackageInfo new methodCategoryPrefix.
	definition _ (MethodReference class: Object selector: #yourself) asMethodDefinition.
	changeRecord _ definition scanForPreviousVersion.
	self assert: changeRecord notNil.
	self assert: changeRecord category = 'accessing'.
	changeRecord fileIn.! !
