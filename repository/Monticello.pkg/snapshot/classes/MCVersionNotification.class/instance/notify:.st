
!MCVersionNotification methodsFor: 'as yet unclassified'!
notify: aString
	| message |
	message _ self messageTo: aString.
	SMTPClient
		deliverMailFrom: message from
		to: (Array with: message to)
		text: message text
		usingServer: MailSender smtpServer! !