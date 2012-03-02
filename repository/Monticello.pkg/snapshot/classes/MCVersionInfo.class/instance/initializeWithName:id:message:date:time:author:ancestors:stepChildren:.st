
!MCVersionInfo methodsFor: 'initialize-release'!
initializeWithName: vName id: aUUID message: aString date: aDate time: aTime author: initials ancestors: aCollection stepChildren: stepCollection
	name _ vName.
	id _ aUUID.
	aString ~~ nil
		ifTrue: [ message _ aString withSqueakLineEndings ].
	date _ aDate.
	time _ aTime.
	author _ initials.
	ancestors _  aCollection.
	stepChildren _ stepCollection! !
