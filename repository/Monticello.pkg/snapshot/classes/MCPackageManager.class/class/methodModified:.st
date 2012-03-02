
!MCPackageManager class methodsFor: 'notifications'!
methodModified: aSystemChangeAnnouncement
	^self managersForClass: aSystemChangeAnnouncement itemClass selector: aSystemChangeAnnouncement itemSelector do:[:mgr| mgr modified: true].! !
