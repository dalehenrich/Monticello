
!MCPackageManager class methodsFor: 'notifications'!
classModified: aSystemChangeAnnouncement
	self managersForClass: aSystemChangeAnnouncement itemClass do:[:mgr| mgr modified: true].! !
