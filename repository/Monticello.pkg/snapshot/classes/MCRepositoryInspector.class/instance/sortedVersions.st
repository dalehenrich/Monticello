
!MCRepositoryInspector methodsFor: 'morphic ui'!
sortedVersions
	| sorter |
	sorter _ MCVersionSorter new.
	sorter addAllVersionInfos: versions.
	^ sorter sortedVersionInfos select: [:ea | versions includes: ea]! !
