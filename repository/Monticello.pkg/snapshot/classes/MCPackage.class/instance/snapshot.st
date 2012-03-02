
!MCPackage methodsFor: 'as yet unclassified'!
snapshot
	| packageInfo definitions categories |
	packageInfo := self packageInfo.
	definitions := OrderedCollection new.
	categories := packageInfo systemCategories.
	categories isEmpty ifFalse: [ definitions add: (MCOrganizationDefinition categories: categories) ].
	packageInfo methods do: [:ea | definitions add: ea asMethodDefinition] displayingProgress: 'Snapshotting methods...'.
	(packageInfo respondsTo: #overriddenMethods) ifTrue:
		[packageInfo overriddenMethods
			do: [:ea | definitions add:
					(packageInfo changeRecordForOverriddenMethod: ea) asMethodDefinition]
			displayingProgress: 'Searching for overrides...'].
	packageInfo classes do: [:ea | definitions addAll: ea classDefinitions] displayingProgress: 'Snapshotting classes...'.
	^ MCSnapshot fromDefinitions: definitions! !
