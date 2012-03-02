
!MCPackageManager class methodsFor: 'notifications'!
registerForNotifications
	"self registerForNotifications"

	SystemChangeNotifier uniqueInstance
		observe: ClassAddedAnnouncement
		send: #classModified:
		to: self;
		observe: ClassCommentedAnnouncement
		send: #classModified:
		to: self;
		observe: ClassModifiedAnnouncement
		send: #classModified:
		to: self;
		observe: ClassMovedAnnouncement
		send: #classMoved:
		to: self;
		observe: ClassRemovedAnnouncement
		send: #classRemoved:
		to: self;
		observe: MethodAddedAnnouncement
		send: #methodModified:
		to: self;
		observe: MethodModifiedAnnouncement
		send: #methodModified:
		to: self;
		observe: MethodMovedAnnouncement
		send: #methodMoved:
		to: self;
		observe: MethodRemovedAnnouncement
		send: #methodRemoved:
		to: self! !
