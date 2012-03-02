
!MCChangeNotificationTest methodsFor: 'tests'!
testCoreMethodModified
	| event |
	event := self modifiedEventFor: #one ofClass: self mockClassA.
	MCWorkingCopy methodModified: event.
	self assert: workingCopy modified! !
