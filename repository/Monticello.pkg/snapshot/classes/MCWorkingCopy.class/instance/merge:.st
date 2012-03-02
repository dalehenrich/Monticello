
!MCWorkingCopy methodsFor: 'operations'!
merge: targetVersion
	| ancestorInfo merger ancestorSnapshot packageSnapshot |
	targetVersion dependencies do: [:ea | ea resolve merge].
	ancestorInfo _ targetVersion info commonAncestorWith: ancestry.
	
	ancestorInfo = targetVersion info ifTrue: [^ MCNoChangesException signal].
	
	packageSnapshot _ package snapshot.
	ancestorSnapshot _ ancestorInfo
							ifNotNil: [(self findSnapshotWithVersionInfo: ancestorInfo)]
							ifNil: [self notifyNoCommonAncestorWith: targetVersion.  MCSnapshot empty].
	
	(ancestry ancestors size = 1
		and: [ancestry ancestors first = ancestorInfo]
		and: [(packageSnapshot patchRelativeToBase: ancestorSnapshot) isEmpty])
				ifTrue: [^ targetVersion load].
	
	merger _ MCThreeWayMerger 
				base: packageSnapshot
				target: targetVersion snapshot
				ancestor: ancestorSnapshot.
	(MCMergeResolutionRequest new merger: merger)
		signal = true ifTrue:
			[merger load.
			ancestry addAncestor: targetVersion info].
	self changed! !
