
!MCWorkingCopyBrowser methodsFor: 'actions'!
viewChanges
	| patch |
	self canSave ifTrue:
		[patch _ workingCopy changesRelativeToRepository: self repository.
		patch isNil ifTrue: [^ self].
		patch isEmpty
			ifTrue: [ workingCopy modified: false.
				self inform: 'No changes' ]
			ifFalse:
				[ workingCopy modified: true.
				(MCPatchBrowser forPatch: patch)
					label: 'Patch Browser: ', workingCopy description;
					show]]! !
