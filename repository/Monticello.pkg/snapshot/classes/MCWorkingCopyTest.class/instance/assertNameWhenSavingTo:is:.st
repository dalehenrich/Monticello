
!MCWorkingCopyTest methodsFor: 'asserting'!
assertNameWhenSavingTo: aRepository is: aString
	| name |
	name _ nil.
	[aRepository storeVersion: workingCopy newVersion]
		on: MCVersionNameAndMessageRequest
		do: [:n | name _ n suggestedName. n resume: (Array with: name with: '')].
	self assert: name = aString! !
