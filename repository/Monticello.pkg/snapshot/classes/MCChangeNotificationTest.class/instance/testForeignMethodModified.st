
!MCChangeNotificationTest methodsFor: 'tests'!
testForeignMethodModified
	| event |
	event := self modifiedEventFor: #foreignMethod ofClass: self class.
	workingCopy class methodModified: event.
	self deny: workingCopy modified! !
