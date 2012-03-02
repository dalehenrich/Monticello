
!MCWorkingCopy class methodsFor: 'as yet unclassified'!
adoptVersionInfoFrom: anInstaller 
	| viCache |
	viCache := Dictionary new.
	anInstaller versionInfo "avoid race codition during bootstrap"
		ifNotNil: [anInstaller versionInfo
				keysAndValuesDo: [:packageName :info | (self
						forPackage: (MCPackage named: packageName))
						versionInfo: (self infoFromDictionary: info cache: viCache)].
			[anInstaller clearVersionInfo]
				on: Error
				do: ["backwards compat"
					]]! !
