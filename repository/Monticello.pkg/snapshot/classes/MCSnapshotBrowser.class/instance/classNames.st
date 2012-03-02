
!MCSnapshotBrowser methodsFor: 'class list'!
classNames
	| categorySelection |
	categorySelection := self selectedSystemCategoryName.
	^ categorySelection = self extensionsCategory
		ifTrue: [self extensionClassNames]
		ifFalse: [(self packageClasses
				select: [:ea | ea category = categorySelection]) collect: [:ea | ea className]]! !
