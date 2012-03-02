
!MCChangeNotificationTest methodsFor: 'private'!
modifiedEventFor: aSelector ofClass: aClass
	| method |
	method := aClass compiledMethodAt: aSelector.
	^ MethodModifiedAnnouncement itemClass: aClass method: method! !
