
!MCPackageManager class methodsFor: 'notifications'!
methodMoved: aSystemChangeAnnouncement
	self managersForClass: aSystemChangeAnnouncement itemClass category: aSystemChangeAnnouncement oldCategory do:[:mgr| mgr modified: true].
	self methodModified: aSystemChangeAnnouncement.! !
