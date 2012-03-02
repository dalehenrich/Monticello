
!MCHttpRepository class methodsFor: 'as yet unclassified'!
creationTemplateLocation: location user: user password: password
	^
('MCHttpRepository
	location: ', location printString, '
	user: ', user printString, '
	password: ', password printString) withSqueakLineEndings! !
