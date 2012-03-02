
!MCCodeTool methodsFor: 'menus'!
browseMethodFull
	"Create and schedule a full Browser and then select the current class and message."

	| myClass |
	(myClass _ self selectedClassOrMetaClass) ifNotNil:
		[Browser fullOnClass: myClass selector: self selectedMessageName]! !
