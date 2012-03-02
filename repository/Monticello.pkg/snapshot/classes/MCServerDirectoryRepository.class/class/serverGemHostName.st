
!MCServerDirectoryRepository classSide methodsFor: 'private'!
serverGemHostName

	^((System descriptionOfSessionSerialNum: GsCurrentSession currentSession sessionSerialNum) at: 3)! !
