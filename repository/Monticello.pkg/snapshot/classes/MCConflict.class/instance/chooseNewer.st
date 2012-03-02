
!MCConflict methodsFor: 'as yet unclassified'!
chooseNewer
	self isLocalNewer ifTrue: [ self chooseLocal ]
		ifFalse: [ self isRemoteNewer ifTrue: [ self chooseRemote ]]! !
