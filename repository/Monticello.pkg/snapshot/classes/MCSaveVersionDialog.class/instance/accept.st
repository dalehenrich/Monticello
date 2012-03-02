
!MCSaveVersionDialog methodsFor: 'as yet unclassified'!
accept
	self answer:
		(Array
			with: (self findTextMorph: #versionName) text asString
			with: (self findTextMorph: #logMessage) text asString)
	! !
