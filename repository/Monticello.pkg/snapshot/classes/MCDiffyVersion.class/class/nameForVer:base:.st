
!MCDiffyVersion class methodsFor: 'instance creation'!
nameForVer: versionName base: baseName
	| baseId |
	baseId := (versionName copyUpToLast: $.) = (baseName copyUpToLast: $.)
		ifTrue: [baseName copyAfterLast: $.]
		ifFalse: [(versionName copyUpToLast: $-) = (baseName copyUpToLast: $-)
			ifTrue: [baseName copyAfterLast: $-]
			ifFalse: ['@', baseName]].
	^ versionName, '(', baseId, ')'! !
