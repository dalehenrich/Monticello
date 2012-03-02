
!MCDictionaryRepository methodsFor: 'as yet unclassified'!
sortedVersionInfos
	| sorter |
	sorter _ MCVersionSorter new.
	self allVersionInfos do: [:ea | sorter addVersionInfo: ea].
	^ sorter sortedVersionInfos! !
