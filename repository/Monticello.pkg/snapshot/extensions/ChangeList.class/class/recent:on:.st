
!ChangeList class methodsFor: '*monticello'!
recent: charCount on: origChangesFile 
	"Opens a changeList on the end of the specified changes log file"
	| changeList end changesFile |
	changesFile _ origChangesFile readOnlyCopy.
	end _ changesFile size.
	Cursor read
		showWhile: [changeList _ self new
						scanFile: changesFile
						from: (0 max: end - charCount)
						to: end].
	changesFile close.
	^changeList! !
