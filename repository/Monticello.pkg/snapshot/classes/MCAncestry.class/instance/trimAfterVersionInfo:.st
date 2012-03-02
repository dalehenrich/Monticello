
!MCAncestry methodsFor: 'ancestry'!
trimAfterVersionInfo: aVersionInfo
	aVersionInfo = self
		ifTrue: [ancestors _ #()]
		ifFalse:
			[aVersionInfo date <= self date ifTrue:
				[ancestors do: [:ea | ea trimAfterVersionInfo: aVersionInfo]]
		]! !
