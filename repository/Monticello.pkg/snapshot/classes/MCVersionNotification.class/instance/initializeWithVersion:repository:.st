
!MCVersionNotification methodsFor: 'as yet unclassified'!
initializeWithVersion: aVersion repository: aRepository
	version _ aVersion.
	repository _ aRepository.
	ancestor _ repository closestAncestorVersionFor: version info ifNone: []. 
	changes _ ancestor
				ifNil: [#()]
				ifNotNil: [(version snapshot patchRelativeToBase: ancestor snapshot) 							operations asSortedCollection]! !
