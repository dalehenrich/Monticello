
!MCSnapshotBrowser methodsFor: 'class list'!
classListIndex: anInteger 
	"Set anInteger to be the index of the current class selection."

	| className |

	classListIndex := anInteger.
	messageCategoryListIndex := 0.
	messageListIndex := 0.
	self classCommentIndicated
		ifTrue: []
		ifFalse: [self editSelection: (anInteger = 0
					ifTrue: [metaClassIndicated | (systemCategoryListIndex == 0)
						ifTrue: [#none]
						ifFalse: [#newClass]]
					ifFalse: [#editClass])].
	contents := nil.
	className := self selectedClassName.
	self changed: #classSelectionChanged.
	self changed: #classCommentText.
	self changed: #classListIndex.	"update my selection"
	self changed: #messageCategoryList.
	self changed: #messageList.
	self changed: #relabel.
	self contentsChanged! !
