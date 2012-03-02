
!MCWorkingCopyBrowser class methodsFor: 'as yet unclassified'!
initialize
	 (TheWorldMenu respondsTo: #registerOpenCommand:)
         ifTrue: [TheWorldMenu registerOpenCommand: {'Monticello Browser'. {self. #open}}]! !
