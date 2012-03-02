
!MCSnapshotBrowser methodsFor: 'message list'!
selectedMessage
	"Answer a copy of the source code for the selected message."

	| aList methDef |
	messageListIndex = 0 ifTrue: [^ contents copy].
	methDef := (aList := self visibleMethods) size >= messageListIndex
		ifTrue:
			[aList at: messageListIndex]
		ifFalse:
			[nil].
	^ contents := (self showingDocumentation
		ifFalse: [ methDef source ]
		ifTrue: [ self commentContents ])! !
