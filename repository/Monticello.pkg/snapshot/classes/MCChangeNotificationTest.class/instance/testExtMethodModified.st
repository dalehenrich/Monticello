
!MCChangeNotificationTest methodsFor: 'tests'!
testExtMethodModified
	| event mref |
	mref := workingCopy packageInfo extensionMethods first.
	event := self modifiedEventFor: mref methodSymbol ofClass: mref actualClass.
	workingCopy class methodModified: event.
	self assert: workingCopy modified! !
