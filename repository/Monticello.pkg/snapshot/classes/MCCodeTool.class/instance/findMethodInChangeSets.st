
!MCCodeTool methodsFor: 'menus'!
findMethodInChangeSets
	"Find and open a changeSet containing the current method."

	| aName |
	(aName _ self selectedMessageName) ifNotNil: [
		ChangeSorter browseChangeSetsWithClass: self selectedClassOrMetaClass
					selector: aName]! !
