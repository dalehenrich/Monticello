
!MCVersionInspector methodsFor: 'as yet unclassified'!
diff
	| ancestorVersion |
	self pickAncestor ifNotNilDo:
		[:ancestor |
		ancestorVersion _ self version workingCopy repositoryGroup versionWithInfo: ancestor.
		(self version asDiffAgainst: ancestorVersion) open]! !
