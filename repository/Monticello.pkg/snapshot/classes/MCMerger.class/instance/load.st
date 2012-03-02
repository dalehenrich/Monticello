
!MCMerger methodsFor: 'as yet unclassified'!
load
	| loader |
	loader _ MCPackageLoader new.
	loader provisions addAll: self provisions.
	self applyTo: loader.
	loader load! !
