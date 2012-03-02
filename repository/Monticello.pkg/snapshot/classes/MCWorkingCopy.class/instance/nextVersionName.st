
!MCWorkingCopy methodsFor: 'private'!
nextVersionName
	| branch oldName |
	ancestry ancestors isEmpty
		ifTrue: [counter ifNil: [counter _ 0]. branch _ package name]
		ifFalse:
			[oldName _ ancestry ancestors first name.
			oldName last isDigit
				ifFalse: [branch _ oldName]
				ifTrue: [branch _ oldName copyUpToLast: $-].
			counter ifNil: [
				counter _ (ancestry ancestors collect: [:each |
					each name last isDigit
						ifFalse: [0]
						ifTrue: [(each name copyAfterLast: $-) extractNumber]]) max]].

	counter _ counter + 1.
	^ branch, '-',  MCPlatformSupport authorInitials, '.', counter asString! !
