
!MCHttpRepository methodsFor: 'as yet unclassified'!
password
	self userAndPasswordFromSettingsDo: [:usr :pwd | ^pwd].

	self user isEmpty ifTrue: [^password].

	[password isEmpty] whileTrue: [
		| answer |
		"Give the user a chance to change the login"
		answer _ FillInTheBlank request: 'User name for ', String cr, location
			initialAnswer: self user.
		answer isEmpty
			ifTrue: [^password]
			ifFalse: [self user: answer].
		
		password := FillInTheBlank requestPassword: 'Password for "', self user, '" at ', String cr, location.
	].

	^ password! !
