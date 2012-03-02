
!MCCodeTool methodsFor: 'menus'!
copySelector
	"Copy the selected selector to the clipboard"

	| selector |
	(selector _ self selectedMessageName) ifNotNil:
		[Clipboard clipboardText: selector asString]! !
