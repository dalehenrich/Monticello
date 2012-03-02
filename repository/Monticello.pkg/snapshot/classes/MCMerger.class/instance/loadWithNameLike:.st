
!MCMerger methodsFor: 'as yet unclassified'!
loadWithNameLike: baseName
	| loader |
	loader _ MCPackageLoader new.
	loader provisions addAll: self provisions.
	self applyTo: loader.
	loader loadWithNameLike: baseName! !
