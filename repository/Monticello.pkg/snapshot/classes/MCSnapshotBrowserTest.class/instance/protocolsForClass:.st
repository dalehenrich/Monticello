
!MCSnapshotBrowserTest methodsFor: 'private'!
protocolsForClass: aClass
	| protocols |
	protocols _ aClass organization categories.
	protocols size > 1 ifTrue: [protocols _ protocols copyWith: '-- all --'].
	^ protocols.! !
