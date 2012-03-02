
!MCWorkingCopyTest methodsFor: 'asserting'!
assertNumberWhenSavingTo: aRepository is: aNumber
	| name |
	name _ nil.
	[aRepository storeVersion: workingCopy newVersion]
		on: MCVersionNameAndMessageRequest
		do: [:n | name _ n suggestedName. n resume: (Array with: name with: '')].
	self assert: name = (self packageName, '-', MCPlatformSupport authorInitials, '.', aNumber asString)! !
