
!MCPackageManager class methodsFor: 'private'!
managersForCategory: aSystemCategory do: aBlock
	| cat foundOne index |
	foundOne := false.
	cat := aSystemCategory ifNil:[^nil].
	"first ask PackageInfos, their package name might not match the category"
	self registry do: [:mgr | 
		(mgr packageInfo includesSystemCategory: aSystemCategory)	ifTrue: [
			aBlock value: mgr.
			foundOne := true.
		]
	].
	foundOne ifTrue: [^self].
	["Loop over categories until we found a matching one"
	self registry at: (MCPackage named: cat) ifPresent:[:mgr|
		aBlock value: mgr.
		foundOne := true.
	].
	index := cat lastIndexOf: $-.
	index > 0]whileTrue:[
		"Step up to next level package"
		cat := cat copyFrom: 1 to: index-1.
	].
	foundOne ifFalse:[
		"Create a new (but only top-level)"
		aBlock value: (MCWorkingCopy forPackage: (MCPackage named: (aSystemCategory copyUpTo: $-) capitalized)).
	].! !
