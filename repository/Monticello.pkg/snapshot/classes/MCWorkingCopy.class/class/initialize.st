
!MCWorkingCopy class methodsFor: 'as yet unclassified'!
initialize
	"Smalltalk 
		at: #MczInstaller
		ifPresent: [:installer | self adoptVersionInfoFrom: installer].
	"
	SystemLoginNotification subscribe: self name.
	self sessionStart! !
