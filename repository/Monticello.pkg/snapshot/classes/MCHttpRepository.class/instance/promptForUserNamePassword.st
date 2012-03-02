
!MCHttpRepository methodsFor: 'private'!
promptForUserNamePassword
	| textRequestClass pass |
	pass := ''.
	(textRequestClass := Smalltalk classNamed: #OBTextRequest) == nil 
		ifTrue: [ ^password ].
	[pass isEmpty] whileTrue: [ | answer |
		answer := textRequestClass 
			prompt: 'User name for ', location 
			template: self user.
		answer isEmpty
			ifTrue: [ ^password ]
			ifFalse: [ self user: answer ].
		pass := textRequestClass 
			prompt: 'Password for ', self user, ' at ', location 
			template: password].
	^pass! !
