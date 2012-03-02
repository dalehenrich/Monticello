
!MCHttpRepository class methodsFor: 'class initialization'!
clearPasswords
	self allSubInstancesDo: [:ea | ea password: ''].
! !
