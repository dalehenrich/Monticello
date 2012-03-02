
!MCPlatformSupport classSide methodsFor: 'smalltalk'!
smalltalkKeys

	| result symbolList |
	symbolList := System myUserProfile symbolList.
	result := Array new.
	1 to: symbolList size do:[ :j| | aDict theAssoc |
  		aDict := symbolList at: j .
  		aDict == nil ifFalse:[
			result addAll: aDict keys.
		].
  	].
	^result! !
