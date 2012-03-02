
!MCWorkingCopy methodsFor: 'operations'!
invertedChangesRelativeToRepository: aRepository
	| ancestorVersion ancestorSnapshot |
	ancestorVersion _ aRepository closestAncestorVersionFor: ancestry ifNone: [].
	ancestorSnapshot _ ancestorVersion ifNil: [MCSnapshot empty] ifNotNil: [ancestorVersion snapshot].
	^ ancestorSnapshot invertedPatchRelativeToBase: package snapshot! !
