
!MCVersionDependency methodsFor: 'testing'!
isOlder
	"Answer true if I represent an older version of a package that is loaded."
	^ self isFulfilled not and: [ self isFulfilledByAncestors and: [package workingCopy modified not]]! !
