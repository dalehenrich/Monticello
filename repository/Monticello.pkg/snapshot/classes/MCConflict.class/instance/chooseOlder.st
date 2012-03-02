
!MCConflict methodsFor: 'as yet unclassified'!
chooseOlder
	self isRemoteNewer ifTrue: [ self chooseLocal ]
		ifFalse: [ self isLocalNewer ifTrue: [ self chooseRemote ]]! !
