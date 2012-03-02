
!MCClassDefinition methodsFor: 'comparing'!
hash
	| hash |
	hash _ String stringHash: name initialHash: 0.
	hash _ String stringHash: superclassName initialHash: hash.
	hash _ String stringHash: (category ifNil: ['']) initialHash: hash.
	hash _ String stringHash: type initialHash: hash.
	variables do: [
		:v |
		hash _ String stringHash: v name initialHash: hash.
	].
	^ hash! !
