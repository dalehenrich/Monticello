
!MCPackageManager class methodsFor: 'notifications'!
methodRemoved: aSystemChangeAnnouncement
	self managersForClass: aSystemChangeAnnouncement itemClass category: aSystemChangeAnnouncement itemProtocol do:[:mgr| mgr modified: true].! !
