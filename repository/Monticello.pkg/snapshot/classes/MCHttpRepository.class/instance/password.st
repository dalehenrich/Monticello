
!MCHttpRepository methodsFor: 'as yet unclassified'!
password
	self user isEmpty 
		ifTrue: [
			password == nil ifTrue: [ ^'' ].
			^password].
	password == nil ifTrue: [  password := self promptForUserNamePassword ].
	password == nil ifTrue: [ ^'' ].
	^password! !
