
!MCRepository methodsFor: 'as yet unclassified'!
sendNotificationsForVersion: aVersion
	| notification notifyList |
	notifyList _ self notifyList.
	notifyList isEmpty ifFalse:
		[notification _ self notificationForVersion: aVersion.
		notifyList do: [:ea | notification notify: ea]]! !
