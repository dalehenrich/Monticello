
!MCFileBasedRepository methodsFor: 'as yet unclassified'!
possiblyNewerVersionsOfAnyOf: someVersions
	| pkgs |
	pkgs := Dictionary new.

	someVersions do: [:aVersionInfo | | pName pVersion ver |
		pName := aVersionInfo name copyUpToLast: $-.
		pVersion := (aVersionInfo name copyAfterLast: $.) asNumber.
		ver := pkgs at: pName ifAbsent: [ nil ].
		(ver == nil or: [ pVersion > ver ])
			ifTrue: [ pkgs at: pName put: pVersion ]].

	^[self allVersionNames select: [:each |
		(pkgs at: (each copyUpToLast: $-) ifPresent: [:verNumber |
			verNumber < (each copyAfterLast: $.) asNumber
				or: [verNumber = (each copyAfterLast: $.) asNumber
					and: [someVersions noneSatisfy: [:v | v name = each]]]]) == true]
	] on: Error do: [:ex | ex return: #()]! !
