
!MCAncestry methodsFor: 'ancestry'!
allAncestors
	^ MCVersionSorter new
		addAllVersionInfos: self ancestors;
		sortedVersionInfos! !
