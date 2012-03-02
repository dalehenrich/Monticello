
!MCWorkingCopy methodsFor: 'migration'!
updateInstVars
	ancestry ifNil:
		[ancestry _ MCWorkingAncestry new.
		versionInfo ifNotNil:
			[versionInfo ancestors do: [:ea | ancestry addAncestor: ea].
			versionInfo _ nil]]! !
