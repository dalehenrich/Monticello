
!MCVersionReader class methodsFor: 'file services'!
initialize
	"MCVersionReader initialize"
	Smalltalk 
		at: #MczInstaller
		ifPresent: [:installer | FileList unregisterFileReader: installer].
	self concreteSubclasses do: [:aClass | FileList registerFileReader: aClass].

	"get rid of AnObsoleteMCMcReader and AnObsoleteMCMcvReader"
	(FileList registeredFileReaderClasses  select: [ :ea | ea isObsolete ]) do: 
		[ :ea | FileList unregisterFileReader: ea ]
! !
