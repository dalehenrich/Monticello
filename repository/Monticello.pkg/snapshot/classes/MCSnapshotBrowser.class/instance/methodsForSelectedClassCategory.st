
!MCSnapshotBrowser methodsFor: 'accessing'!
methodsForSelectedClassCategory
	| visibleClasses |
	visibleClasses _ self visibleClasses.
	^ items select: [:ea | (visibleClasses includes: ea className) 
									and: [ea isMethodDefinition]
									and: [ea classIsMeta = self switchIsClass]].! !
