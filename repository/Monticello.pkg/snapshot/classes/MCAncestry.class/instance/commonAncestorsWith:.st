
!MCAncestry methodsFor: 'ancestry'!
commonAncestorsWith: aVersionInfo

	| sharedAncestors mergedOrder sorter |
	sorter _ MCVersionSorter new
						addVersionInfo: self;
						addVersionInfo: aVersionInfo.
	mergedOrder _ sorter sortedVersionInfos.
	sharedAncestors _ (sorter allAncestorsOf: self) intersection: (sorter allAncestorsOf: aVersionInfo).
	^ mergedOrder select: [:ea | sharedAncestors includes: ea]! !
