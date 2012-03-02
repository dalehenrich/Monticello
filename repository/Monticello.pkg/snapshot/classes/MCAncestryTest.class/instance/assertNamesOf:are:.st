
!MCAncestryTest methodsFor: 'asserting'!
assertNamesOf: versionInfoCollection are: nameArray
	| names |
	names _ versionInfoCollection collect: [:ea | ea name].
	
	self assert: names asArray = nameArray! !
