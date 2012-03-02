
!MCPackageManager class methodsFor: 'notifications'!
classMoved: aSystemChangeAnnouncement
	self classModified: aSystemChangeAnnouncement.
	self managersForCategory: aSystemChangeAnnouncement oldCategory do:[:mgr| mgr modified: true].! !
