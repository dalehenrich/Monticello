
!PseudoClass methodsFor: 'class'!
definition
	| link linkText defText |
	^definition ifNil:
		['There is no class definition for ', self name, ' in this file' ].! !
