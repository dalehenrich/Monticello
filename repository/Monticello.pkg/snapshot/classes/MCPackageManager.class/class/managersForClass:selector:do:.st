
!MCPackageManager class methodsFor: 'private'!
managersForClass: aClass selector: aSelector do: aBlock
	^self managersForClass: aClass category: (aClass categoryOfSelector: aSelector) do: aBlock! !
