
!MCDictionaryRepository methodsFor: 'as yet unclassified'!
morphicOpen: aWorkingCopy
	| names index infos |
	infos _ self sortedVersionInfos.
	infos isEmpty ifTrue: [^ self inform: 'No versions'].
	names _ infos collect: [:ea | ea name].
	index _ (PopUpMenu labelArray: names) startUpWithCaption: 'Open version:'.
	index = 0 ifFalse: [(self versionWithInfo: (infos at: index)) open]! !
