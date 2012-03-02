
!MCSnapshotBrowser methodsFor: 'message list'!
messageList

	^self visibleMethods collect: [:ea | ea selector ].! !
