
!MCRepository class methodsFor: 'external settings'!
fetchExternalSettingsIn: aDirectory
	"Scan for settings file"
	"MCRepository fetchExternalSettingsIn: ExternalSettings preferenceDirectory"

	| stream |
	(aDirectory fileExists: self settingsFileName)
		ifFalse: [^self].
	stream _ aDirectory readOnlyFileNamed: self settingsFileName.
	stream
		ifNotNil: [
			[Settings _ ExternalSettings parseServerEntryArgsFrom: stream]
				ensure: [stream close]].
! !
