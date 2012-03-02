
!MCChangeNotificationTest methodsFor: 'tests'!
testExtMethodModified
	| event mref |
	workingCopy modified: false.
	mref := workingCopy packageInfo extensionMethods first.
	event := self modifiedEventFor: mref methodSymbol ofClass: mref actualClass.
	MCWorkingCopy methodModified: event.
	self assert: workingCopy modified! !
