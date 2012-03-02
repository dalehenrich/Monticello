
!MCSnapshotBrowserTest methodsFor: 'testing'!
testNoSelection
	self assertAListMatches: self allCategories.
	self denyAListIncludesAnyOf: self definedClasses.
	self denyAListIncludesAnyOf: self allProtocols.
	self denyAListIncludesAnyOf: self allMethods.
	self assertTextIs: ''.! !
