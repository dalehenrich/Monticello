
!MCVersionMerger methodsFor: 'as yet unclassified'!
addVersion: aVersion
	| dep |
	records add: (MCMergeRecord version: aVersion).
	aVersion dependencies do:
		[:ea |
		dep _ ea resolve.
		(records anySatisfy: [:r | r version = dep]) ifFalse: [self addVersion: dep]]! !
