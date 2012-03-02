
!MCFileRepositoryInspector methodsFor: 'as yet unclassified'!
refresh
	| packageNames name latest av |
	packageNames _ Set new.
	versions _ repository readableFileNames collect: [ :each |
		name _ (each copyUpToLast: $.) copyUpTo: $(.
		name last isDigit ifFalse: [Array with: name with: '' with: '' with: each]
			ifTrue:
				[Array
					with: (packageNames add: (name copyUpToLast:  $-))		"pkg name"
					with: ((name copyAfterLast: $-) upTo: $.)				"user"
					with: ((name copyAfterLast: $-) copyAfter: $.) asInteger	"version"
					with: each]].
	newer _ Set new.
	inherited _ Set new.
	loaded _ Set new.
	(MCWorkingCopy allManagers 
"		select: [ :each | packageNames includes: each packageName]")
		do: [:each |
			each ancestors do: [ :ancestor |
				loaded add: ancestor name.
				ancestor ancestorsDoWhileTrue: [:heir |
					(inherited includes: heir name)
						ifTrue: [false]
						ifFalse: [inherited add: heir name. true]]].
			latest _ (versions select: [:v | v first = each package name])	
				detectMax: [:v | v third].
			(latest notNil and: [
				each ancestors allSatisfy: [:ancestor |
					av _ ((ancestor name copyAfterLast: $-) copyAfter: $.) asInteger.
					av < latest third or: [
						av = latest third and: [((ancestor name copyAfterLast: $-) upTo: $.) ~= latest second]]]])
				ifTrue: [newer add: each package name ]].

	self changed: #packageList; changed: #versionList! !
