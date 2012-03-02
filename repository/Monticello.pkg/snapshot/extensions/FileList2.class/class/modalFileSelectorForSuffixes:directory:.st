
!FileList2 classSide methodsFor: '*monticello'!
modalFileSelectorForSuffixes: aList directory: aDirectory

	| window aFileList |

	window _ self morphicViewFileSelectorForSuffixes: aList directory: aDirectory.
	aFileList _ window valueOfProperty: #fileListModel.
	window openCenteredInWorld.
	[window world notNil] whileTrue: [
		window outermostWorldMorph doOneCycleNow.
	].
	^aFileList getSelectedFile! !
