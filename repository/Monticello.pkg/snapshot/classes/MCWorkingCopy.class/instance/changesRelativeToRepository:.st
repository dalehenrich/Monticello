
!MCWorkingCopy methodsFor: 'operations'!
changesRelativeToRepository: aRepository
	| ancestorVersion ancestorSnapshot |
	ancestorVersion _ aRepository closestAncestorVersionFor: ancestry ifNone: [].
	ancestorSnapshot _ ancestorVersion ifNil: [MCSnapshot empty] ifNotNil: [ancestorVersion snapshot].
	^ package snapshot patchRelativeToBase: ancestorSnapshot! !
