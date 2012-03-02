
!OverriddenBaseMethodsTest methodsFor: '*monticello'!
baseOverridesMonticelloTimeClass: known
	self
		addTo: known
		forBehavior: Time class
		overrides: {
			#'fromString:' -> 'fromString: aString

"Creates and returns an instance of the receiver from the String aString.
 The String expresses local time in the default format (HH:MM:SS).
 Generates an error if the String does not conform to the format."

^ self fromString: aString usingFormat: #($: true false).
'.
	}! !
