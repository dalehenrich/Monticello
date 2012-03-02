
!MCWorkingCopy class methodsFor: 'as yet unclassified'!
initialize
	Smalltalk 
		at: #MczInstaller
		ifPresent: [:installer | self adoptVersionInfoFrom: installer].
	self updateInstVars.
	"Temporary conversion code -- remove later"
	registry ifNotNil:[registry rehash]. "changed #="
	self allInstancesDo:[:each| "moved notifications"
		Smalltalk at: #SystemChangeNotifier ifPresent:[:cls|
			cls uniqueInstance noMoreNotificationsFor: each.
		].
	].
	self registerForNotifications.! !
