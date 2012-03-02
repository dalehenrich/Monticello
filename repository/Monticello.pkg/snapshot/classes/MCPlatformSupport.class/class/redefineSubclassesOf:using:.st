
!MCPlatformSupport classSide methodsFor: 'smalltalk'!
redefineSubclassesOf: aClass using: aClassOrganizer

	(aClassOrganizer subclassesOf: aClass) do: [:subClass | | newClass |
		newClass := subClass definition evaluate.
		self redefineSubclassesOf: subClass using: aClassOrganizer.
	].! !
