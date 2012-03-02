
!MCSnapshotBrowserTest methodsFor: 'testing'!
testAnnotationPane
	| oldPref |
	oldPref _ Preferences annotationPanes.

	Preferences disable: #annotationPanes.
	morph _ model buildWindow.
	self assert: (self morphsOfClass: TextMorph) size = 1.

	Preferences enable: #annotationPanes.
	morph _ model buildWindow.
	self assert: (self morphsOfClass: TextMorph) size = 2.

	Preferences setPreference: #annotationPanes toValue: oldPref! !
