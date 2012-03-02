
!MCStWriterTest methodsFor: 'testing'!
testOrganizationDefinition
	| definition |
	definition _ MCOrganizationDefinition categories: 
					(self mockPackage packageInfo systemCategories).
	writer visitOrganizationDefinition: definition.
	self assertContentsOf: stream match: self expectedOrganizationDefinition.
	self assertAllChunksAreWellFormed.! !
