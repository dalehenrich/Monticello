
!MCSystemCategoryParser methodsFor: 'as yet unclassified'!
addDefinitionsTo: aCollection
	| definition |
	definition _ aCollection detect: [:ea | ea isOrganizationDefinition ] ifNone: [aCollection add: (MCOrganizationDefinition categories: #())].
	definition categories: (definition categories copyWith: self category).! !
