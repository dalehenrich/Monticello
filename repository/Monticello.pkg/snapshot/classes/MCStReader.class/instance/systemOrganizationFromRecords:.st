
!MCStReader methodsFor: 'as yet unclassified'!
systemOrganizationFromRecords: changeRecords
	| categories |
	categories _ changeRecords
					select: [:ea | 'SystemOrganization*' match: ea string]
					thenCollect: [:ea | (self categoryFromDoIt: ea string)].
	^ categories isEmpty ifFalse: [MCOrganizationDefinition categories: categories asArray]! !
