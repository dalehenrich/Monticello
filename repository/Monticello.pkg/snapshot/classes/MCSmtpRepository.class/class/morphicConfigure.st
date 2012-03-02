
!MCSmtpRepository class methodsFor: 'as yet unclassified'!
morphicConfigure
	| address |
	address _ FillInTheBlankMorph request: 'Email address:'.
	^ address isEmpty ifFalse: [self new emailAddress: address]! !
