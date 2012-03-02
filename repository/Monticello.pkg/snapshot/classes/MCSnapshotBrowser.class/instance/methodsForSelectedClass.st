
!MCSnapshotBrowser methodsFor: 'message category list'!
methodsForSelectedClass
	"Answer the selected category of messages."

	classListIndex = 0
		ifTrue: [^ Array new]
		ifFalse: [	 | classSelection |
			classSelection := self selectedClassName.
			^ self definitions
				select: [:ea | ea isMethodDefinition
						and: [ea className = classSelection]
						and: [ea classIsMeta = self metaClassIndicated]]]! !
