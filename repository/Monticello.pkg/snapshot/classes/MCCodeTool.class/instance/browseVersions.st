
!MCCodeTool methodsFor: 'menus'!
browseVersions
	"Create and schedule a message set browser on all versions of the 
	currently selected message selector."

	| class selector compiledMethod |
	class _ self selectedClassOrMetaClass.
	selector _ self selectedMessageName.
	compiledMethod _ class compiledMethodAt: selector ifAbsent: [ ^self ].
	VersionsBrowser
		browseVersionsOf: compiledMethod
		class: class theNonMetaClass
		meta: class isMeta
		category: self selectedMessageCategoryName
		selector: selector! !
