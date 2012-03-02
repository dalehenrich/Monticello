
!MCVersionNameAndMessageRequest methodsFor: 'as yet unclassified'!
defaultAction
	^ MCSaveVersionDialog new
		versionName: suggestion;
		showModally! !
