
!MCWorkingCopyTest methodsFor: 'actions'!
snapshot
	| version |
	[version _ workingCopy newVersion]
		on: MCVersionNameAndMessageRequest
		do: [:n | n resume: (Array with: n suggestedName with: '')].
	versions at: version info put: version.
	^ version! !
