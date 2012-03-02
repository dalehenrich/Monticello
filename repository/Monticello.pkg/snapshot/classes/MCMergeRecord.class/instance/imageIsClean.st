
!MCMergeRecord methodsFor: 'as yet unclassified'!
imageIsClean
	| ancestors |
	ancestors _ version workingCopy ancestors.
	^ ancestors size = 1
		and: [ancestors first = self ancestorInfo]	
		and: [self imagePatch isEmpty]! !
