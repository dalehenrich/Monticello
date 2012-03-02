
!MCPackageManager class methodsFor: 'as yet unclassified'!
initialize
	"Remove this later"
	Smalltalk at: #SystemChangeNotifier ifPresent:[:cls|
		(cls uniqueInstance) noMoreNotificationsFor: self.
	].! !
